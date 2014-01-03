# Find plugins at https://npmjs.org/browse/keyword/gulpplugin
gulp      = require 'gulp'
coffee    = require 'gulp-coffee'
wrapUMD   = require 'gulp-wrap-umd'
markdown  = require 'gulp-markdown'
rename    = require 'gulp-rename'
header    = require 'gulp-header'

gulp.task 'build', ->
	gulp.src('src/ngRange.coffee')
		.pipe(coffee(bare: true))
		.pipe(wrapUMD(
				namespace: 'ngRange'
				deps: ['angular']
		))
		.pipe(gulp.dest('./dist/'));

	gulp.src('README.md')
		.pipe(markdown())
		.pipe(header("<link href='http://kevinburke.bitbucket.org/markdowncss/markdown.css'' rel='stylesheet'></link>\n"))
		.pipe(rename('index.html'))
		.pipe(gulp.dest('./docs/'))

# The default task (called when you run `gulp`)
gulp.task 'default', ->
	gulp.run 'build'

	# Watch files and run tasks if they change
	gulp.watch [
		'src/ngRange.coffee'
		'README.md'
	], (event) ->
		gulp.run 'build'

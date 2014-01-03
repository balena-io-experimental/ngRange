angular.module('ngRange', [])
	.filter 'range', ->
		(input) ->
			switch input.length
				when 0
					0
				when 1
					[0...parseInt(input[0], 10)]
				when 2
					[parseInt(input[0], 10)...parseInt(input[1], 10)]
				else
					input
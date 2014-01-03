# ngRange

A simple AngularJS filter to allow range iteration in an ng-repeat directive.

## Why?

Some times you need to have an ng-repeat do a given number of iterations that is not intrinsically tied to an object or array in the scope. This is an edge case not supported by AngularJS, so this module is a stand-in.

## How does it work?

A range is used as follows:

`<div ng-repeat="n in [5, 10] | range">The value of n is  {{n}}</div>"`

This div will be repeated for values of n from 5 to 9 inclusive.

If only a single argument is given, an implicit 0 is inserted as the lower bound. This allows syntax like this:

`<div ng-repeat="n in [10] | range">The value of n is  {{n}}</div>"`

Which will repeat for values of n from 0 to 9.

The upper bound of a range is not inclusive.

## Installation

`bower install ngRange`

make sure ngRange/dist/ngRange.js is loaded before your angular module. ngRange is wrapped in the Universal Module Definition so it supports AMD, CommonJS, and plain ol' global declaration via script tag.

Make your angular module require the 'ngRange' module and inject the ngRange service into your controller. You're ready to go.

## Development

You'll need to clone this repository, have gulp installed globally (via `npm install -g gulp`) and then run `npm install`.

Once you're set up run `gulp build` to convert the source to a js file in /dist or simply run `gulp` to build continuously with a watcher. The code in /example points to the version in /dist as a dead-simple way of testing.

## Future

Not much of a roadmap for something this simple. Issues and pull requests however, are welcome.


(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(["angular"], factory);
  } else if (typeof exports === 'object') {
    module.exports = factory(require('angular'));
  } else {
    root.ngRange = factory(root.angular);
  }
}(this, function() {

return angular.module('ngRange', []).filter('range', function() {
  return function(input) {
    var _i, _j, _ref, _ref1, _ref2, _results, _results1;
    switch (input.length) {
      case 0:
        return 0;
      case 1:
        return (function() {
          _results = [];
          for (var _i = 0, _ref = parseInt(input[0], 10); 0 <= _ref ? _i < _ref : _i > _ref; 0 <= _ref ? _i++ : _i--){ _results.push(_i); }
          return _results;
        }).apply(this);
      case 2:
        return (function() {
          _results1 = [];
          for (var _j = _ref1 = parseInt(input[0], 10), _ref2 = parseInt(input[1], 10); _ref1 <= _ref2 ? _j < _ref2 : _j > _ref2; _ref1 <= _ref2 ? _j++ : _j--){ _results1.push(_j); }
          return _results1;
        }).apply(this);
      default:
        return input;
    }
  };
});
;

}));

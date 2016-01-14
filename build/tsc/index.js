(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var Lib1 = require('./lib1');
var instance = new Lib1('test');
console.log(instance.name);


},{"./lib1":2}],2:[function(require,module,exports){
var Lib1 = (function () {
    function Lib1(name) {
        this.name = name;
    }
    return Lib1;
})();
module.exports = Lib1;


},{}]},{},[1])


//# sourceMappingURL=index.js.map

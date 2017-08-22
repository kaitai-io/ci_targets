// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var ImportsCircularB = require('./ImportsCircularB.js');

var ImportsCircularA = (function() {
  function ImportsCircularA(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCircularA.prototype._read = function() {
    this.code = this._io.readU1();
    this.two = new ImportsCircularB(this._io, null, null);
  }

  return ImportsCircularA;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ImportsCircularA', [], function() {
    return ImportsCircularA;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ImportsCircularA;
}

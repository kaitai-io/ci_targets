// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var ImportsCircularA = require('./ImportsCircularA.js');

var ImportsCircularB = (function() {
  function ImportsCircularB(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCircularB.prototype._read = function() {
    this.initial = this._io.readU1();
    if (this.initial == 65) {
      this.backRef = new ImportsCircularA(this._io, null, null);
    }
  }

  return ImportsCircularB;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ImportsCircularB', [], function() {
    return ImportsCircularB;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ImportsCircularB;
}

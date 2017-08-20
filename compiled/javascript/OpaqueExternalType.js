// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var TermStrz = require('./TermStrz.js');

var OpaqueExternalType = (function() {
  function OpaqueExternalType(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueExternalType.prototype._read = function() {
    this.one = new TermStrz(this._io, null, null);
  }

  return OpaqueExternalType;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('OpaqueExternalType', [], function() {
    return OpaqueExternalType;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = OpaqueExternalType;
}

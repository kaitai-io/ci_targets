// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var OptionalId = (function() {
  function OptionalId(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OptionalId.prototype._read = function() {
    this._unnamed0 = this._io.readU1();
    this._unnamed1 = this._io.readU1();
    this._unnamed2 = this._io.readBytes(5);
  }

  return OptionalId;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('OptionalId', [], function() {
    return OptionalId;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = OptionalId;
}

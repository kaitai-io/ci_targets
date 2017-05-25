// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var EofExceptionU4 = (function() {
  function EofExceptionU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionU4.prototype._read = function() {
    this.prebuf = this._io.readBytes(9);
    this.failInt = this._io.readU4le();
  }

  return EofExceptionU4;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EofExceptionU4', [], function() {
    return EofExceptionU4;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EofExceptionU4;
}

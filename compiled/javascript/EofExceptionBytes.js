// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var EofExceptionBytes = (function() {
  function EofExceptionBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.buf = this._io.readBytes(13);
  }

  return EofExceptionBytes;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EofExceptionBytes', [], function() {
    return EofExceptionBytes;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EofExceptionBytes;
}

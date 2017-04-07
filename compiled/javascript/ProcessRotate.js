// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ProcessRotate = (function() {
  function ProcessRotate(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._raw_buf1 = this._io.readBytes(5);
    this.buf1 = KaitaiStream.processRotateLeft(this._raw_buf1, 3, 1);
    this._raw_buf2 = this._io.readBytes(5);
    this.buf2 = KaitaiStream.processRotateLeft(this._raw_buf2, 8 - (3), 1);
    this.key = this._io.readU1();
    this._raw_buf3 = this._io.readBytes(5);
    this.buf3 = KaitaiStream.processRotateLeft(this._raw_buf3, this.key, 1);
  }

  return ProcessRotate;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ProcessRotate', [], function() {
    return ProcessRotate;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ProcessRotate;
}

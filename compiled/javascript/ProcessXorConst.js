// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ProcessXorConst = (function() {
  function ProcessXorConst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.key = this._io.readU1();
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorOne(this._raw_buf, 255);
  }

  return ProcessXorConst;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ProcessXorConst', [], function() {
    return ProcessXorConst;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ProcessXorConst;
}

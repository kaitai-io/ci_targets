// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ProcessXor4Const = (function() {
  function ProcessXor4Const(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.key = this._io.readBytes(4);
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorMany(this._raw_buf, [236, 187, 163, 20]);
  }

  return ProcessXor4Const;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ProcessXor4Const', [], function() {
    return ProcessXor4Const;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ProcessXor4Const;
}

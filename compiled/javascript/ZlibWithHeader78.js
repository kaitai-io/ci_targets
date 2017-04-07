// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ZlibWithHeader78 = (function() {
  function ZlibWithHeader78(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._raw_data = this._io.readBytesFull();
    this.data = KaitaiStream.processZlib(this._raw_data);
  }

  return ZlibWithHeader78;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ZlibWithHeader78', [], function() {
    return ZlibWithHeader78;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ZlibWithHeader78;
}

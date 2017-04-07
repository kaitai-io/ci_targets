// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var BytesPadTerm = (function() {
  function BytesPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), 64);
    this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false);
    this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false);
    this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true);
  }

  return BytesPadTerm;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('BytesPadTerm', [], function() {
    return BytesPadTerm;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = BytesPadTerm;
}

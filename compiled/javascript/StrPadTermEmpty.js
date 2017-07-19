// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var StrPadTermEmpty = (function() {
  function StrPadTermEmpty(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrPadTermEmpty.prototype._read = function() {
    this.strPad = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(20), 64), "UTF-8");
    this.strTerm = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false), "UTF-8");
    this.strTermAndPad = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false), "UTF-8");
    this.strTermInclude = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true), "UTF-8");
  }

  return StrPadTermEmpty;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('StrPadTermEmpty', [], function() {
    return StrPadTermEmpty;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = StrPadTermEmpty;
}

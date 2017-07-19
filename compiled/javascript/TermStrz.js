// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var TermStrz = (function() {
  function TermStrz(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStrz.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, true, true), "UTF-8");
    this.s2 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, false, true), "UTF-8");
    this.s3 = KaitaiStream.bytesToStr(this._io.readBytesTerm(64, true, true, true), "UTF-8");
  }

  return TermStrz;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('TermStrz', [], function() {
    return TermStrz;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = TermStrz;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrLiteralsLatin1 || (root.StrLiteralsLatin1 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrLiteralsLatin1_, KaitaiStream) {
var StrLiteralsLatin1 = (function() {
  function StrLiteralsLatin1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrLiteralsLatin1.prototype._read = function() {
    this.lenParsed = this._io.readU2le();
    this.parsed = KaitaiStream.bytesToStr(this._io.readBytes(this.lenParsed), "UTF-8");
  }
  Object.defineProperty(StrLiteralsLatin1.prototype, 'parsedEqLiteral', {
    get: function() {
      if (this._m_parsedEqLiteral !== undefined)
        return this._m_parsedEqLiteral;
      this._m_parsedEqLiteral = this.parsed == "\xa3";
      return this._m_parsedEqLiteral;
    }
  });

  return StrLiteralsLatin1;
})();
StrLiteralsLatin1_.StrLiteralsLatin1 = StrLiteralsLatin1;
});

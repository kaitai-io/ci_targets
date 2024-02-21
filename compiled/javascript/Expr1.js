// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Expr1 || (root.Expr1 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Expr1_, KaitaiStream) {
var Expr1 = (function() {
  function Expr1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Expr1.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf1Mod), "ASCII");
  }
  Object.defineProperty(Expr1.prototype, 'lenOf1Mod', {
    get: function() {
      if (this._m_lenOf1Mod !== undefined)
        return this._m_lenOf1Mod;
      this._m_lenOf1Mod = (this.lenOf1 - 2);
      return this._m_lenOf1Mod;
    }
  });
  Object.defineProperty(Expr1.prototype, 'str1Len', {
    get: function() {
      if (this._m_str1Len !== undefined)
        return this._m_str1Len;
      this._m_str1Len = this.str1.length;
      return this._m_str1Len;
    }
  });

  return Expr1;
})();
Expr1_.Expr1 = Expr1;
});

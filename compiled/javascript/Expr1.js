// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

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

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Expr1', [], function() {
    return Expr1;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Expr1;
}

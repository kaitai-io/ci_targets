// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ExprMod = (function() {
  function ExprMod(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprMod.prototype._read = function() {
    this.intU = this._io.readU4le();
    this.intS = this._io.readS4le();
  }
  Object.defineProperty(ExprMod.prototype, 'modPosConst', {
    get: function() {
      if (this._m_modPosConst !== undefined)
        return this._m_modPosConst;
      this._m_modPosConst = KaitaiStream.mod(9837, 13);
      return this._m_modPosConst;
    }
  });
  Object.defineProperty(ExprMod.prototype, 'modNegConst', {
    get: function() {
      if (this._m_modNegConst !== undefined)
        return this._m_modNegConst;
      this._m_modNegConst = KaitaiStream.mod(-(9837), 13);
      return this._m_modNegConst;
    }
  });
  Object.defineProperty(ExprMod.prototype, 'modPosSeq', {
    get: function() {
      if (this._m_modPosSeq !== undefined)
        return this._m_modPosSeq;
      this._m_modPosSeq = KaitaiStream.mod(this.intU, 13);
      return this._m_modPosSeq;
    }
  });
  Object.defineProperty(ExprMod.prototype, 'modNegSeq', {
    get: function() {
      if (this._m_modNegSeq !== undefined)
        return this._m_modNegSeq;
      this._m_modNegSeq = KaitaiStream.mod(this.intS, 13);
      return this._m_modNegSeq;
    }
  });

  return ExprMod;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ExprMod', [], function() {
    return ExprMod;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ExprMod;
}

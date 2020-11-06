// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.CombineBool = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var CombineBool = (function() {
  function CombineBool(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CombineBool.prototype._read = function() {
    this.boolBit = this._io.readBitsIntBe(1) != 0;
  }
  Object.defineProperty(CombineBool.prototype, 'boolCalc', {
    get: function() {
      if (this._m_boolCalc !== undefined)
        return this._m_boolCalc;
      this._m_boolCalc = false;
      return this._m_boolCalc;
    }
  });
  Object.defineProperty(CombineBool.prototype, 'boolCalcBit', {
    get: function() {
      if (this._m_boolCalcBit !== undefined)
        return this._m_boolCalcBit;
      this._m_boolCalcBit = (true ? this.boolCalc : this.boolBit);
      return this._m_boolCalcBit;
    }
  });

  return CombineBool;
})();
return CombineBool;
}));

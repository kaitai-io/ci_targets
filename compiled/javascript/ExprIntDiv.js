// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIntDiv || (root.ExprIntDiv = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIntDiv_, KaitaiStream) {
var ExprIntDiv = (function() {
  function ExprIntDiv(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIntDiv.prototype._read = function() {
    this.intU = this._io.readU4le();
    this.intS = this._io.readS4le();
  }
  Object.defineProperty(ExprIntDiv.prototype, 'divNegConst', {
    get: function() {
      if (this._m_divNegConst !== undefined)
        return this._m_divNegConst;
      this._m_divNegConst = Math.floor(-9837 / 13);
      return this._m_divNegConst;
    }
  });
  Object.defineProperty(ExprIntDiv.prototype, 'divNegSeq', {
    get: function() {
      if (this._m_divNegSeq !== undefined)
        return this._m_divNegSeq;
      this._m_divNegSeq = Math.floor(this.intS / 13);
      return this._m_divNegSeq;
    }
  });
  Object.defineProperty(ExprIntDiv.prototype, 'divPosConst', {
    get: function() {
      if (this._m_divPosConst !== undefined)
        return this._m_divPosConst;
      this._m_divPosConst = Math.floor(9837 / 13);
      return this._m_divPosConst;
    }
  });
  Object.defineProperty(ExprIntDiv.prototype, 'divPosSeq', {
    get: function() {
      if (this._m_divPosSeq !== undefined)
        return this._m_divPosSeq;
      this._m_divPosSeq = Math.floor(this.intU / 13);
      return this._m_divPosSeq;
    }
  });

  return ExprIntDiv;
})();
ExprIntDiv_.ExprIntDiv = ExprIntDiv;
});

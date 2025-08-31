// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIfIntEq || (root.ExprIfIntEq = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIfIntEq_, KaitaiStream) {
var ExprIfIntEq = (function() {
  function ExprIfIntEq(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIfIntEq.prototype._read = function() {
    this.skip = this._io.readBytes(2);
    this.seq = this._io.readS2le();
    if (true) {
      this.seqIf = this._io.readS2le();
    }
  }
  Object.defineProperty(ExprIfIntEq.prototype, 'calc', {
    get: function() {
      if (this._m_calc !== undefined)
        return this._m_calc;
      this._m_calc = 16705;
      return this._m_calc;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcEqCalcIf', {
    get: function() {
      if (this._m_calcEqCalcIf !== undefined)
        return this._m_calcEqCalcIf;
      this._m_calcEqCalcIf = this.calc == this.calcIf;
      return this._m_calcEqCalcIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcEqLit', {
    get: function() {
      if (this._m_calcEqLit !== undefined)
        return this._m_calcEqLit;
      this._m_calcEqLit = this.calc == 16705;
      return this._m_calcEqLit;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcEqSeqIf', {
    get: function() {
      if (this._m_calcEqSeqIf !== undefined)
        return this._m_calcEqSeqIf;
      this._m_calcEqSeqIf = this.calc == this.seqIf;
      return this._m_calcEqSeqIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcIf', {
    get: function() {
      if (this._m_calcIf !== undefined)
        return this._m_calcIf;
      if (true) {
        this._m_calcIf = 16705;
      }
      return this._m_calcIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcIfEqLit', {
    get: function() {
      if (this._m_calcIfEqLit !== undefined)
        return this._m_calcIfEqLit;
      this._m_calcIfEqLit = this.calcIf == 16705;
      return this._m_calcIfEqLit;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'calcIfEqSeqIf', {
    get: function() {
      if (this._m_calcIfEqSeqIf !== undefined)
        return this._m_calcIfEqSeqIf;
      this._m_calcIfEqSeqIf = this.calcIf == this.seqIf;
      return this._m_calcIfEqSeqIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'seqEqCalc', {
    get: function() {
      if (this._m_seqEqCalc !== undefined)
        return this._m_seqEqCalc;
      this._m_seqEqCalc = this.seq == this.calc;
      return this._m_seqEqCalc;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'seqEqCalcIf', {
    get: function() {
      if (this._m_seqEqCalcIf !== undefined)
        return this._m_seqEqCalcIf;
      this._m_seqEqCalcIf = this.seq == this.calcIf;
      return this._m_seqEqCalcIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'seqEqLit', {
    get: function() {
      if (this._m_seqEqLit !== undefined)
        return this._m_seqEqLit;
      this._m_seqEqLit = this.seq == 16705;
      return this._m_seqEqLit;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'seqEqSeqIf', {
    get: function() {
      if (this._m_seqEqSeqIf !== undefined)
        return this._m_seqEqSeqIf;
      this._m_seqEqSeqIf = this.seq == this.seqIf;
      return this._m_seqEqSeqIf;
    }
  });
  Object.defineProperty(ExprIfIntEq.prototype, 'seqIfEqLit', {
    get: function() {
      if (this._m_seqIfEqLit !== undefined)
        return this._m_seqIfEqLit;
      this._m_seqIfEqLit = this.seqIf == 16705;
      return this._m_seqIfEqLit;
    }
  });

  return ExprIfIntEq;
})();
ExprIfIntEq_.ExprIfIntEq = ExprIfIntEq;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprOpsParens || (root.ExprOpsParens = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprOpsParens_, KaitaiStream) {
var ExprOpsParens = (function() {
  function ExprOpsParens(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprOpsParens.prototype._read = function() {
  }
  Object.defineProperty(ExprOpsParens.prototype, 'iM13', {
    get: function() {
      if (this._m_iM13 !== undefined)
        return this._m_iM13;
      this._m_iM13 = -13;
      return this._m_iM13;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'strConcatLen', {
    get: function() {
      if (this._m_strConcatLen !== undefined)
        return this._m_strConcatLen;
      this._m_strConcatLen = this.str0To4 + this.str5To9.length;
      return this._m_strConcatLen;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'strConcatSubstr2To7', {
    get: function() {
      if (this._m_strConcatSubstr2To7 !== undefined)
        return this._m_strConcatSubstr2To7;
      this._m_strConcatSubstr2To7 = this.str0To4 + this.str5To9.substring(2, 7);
      return this._m_strConcatSubstr2To7;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'str0To4', {
    get: function() {
      if (this._m_str0To4 !== undefined)
        return this._m_str0To4;
      this._m_str0To4 = "01234";
      return this._m_str0To4;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'str5To9', {
    get: function() {
      if (this._m_str5To9 !== undefined)
        return this._m_str5To9;
      this._m_str5To9 = "56789";
      return this._m_str5To9;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'strConcatRev', {
    get: function() {
      if (this._m_strConcatRev !== undefined)
        return this._m_strConcatRev;
      this._m_strConcatRev = Array.from(this.str0To4 + this.str5To9).reverse().join('');
      return this._m_strConcatRev;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'boolEq', {
    get: function() {
      if (this._m_boolEq !== undefined)
        return this._m_boolEq;
      this._m_boolEq = (false == true | 0);
      return this._m_boolEq;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'boolAnd', {
    get: function() {
      if (this._m_boolAnd !== undefined)
        return this._m_boolAnd;
      this._m_boolAnd = ( ((false) && (true))  | 0);
      return this._m_boolAnd;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'iSumToStr', {
    get: function() {
      if (this._m_iSumToStr !== undefined)
        return this._m_iSumToStr;
      this._m_iSumToStr = ((this.i42 + this.iM13)).toString(10);
      return this._m_iSumToStr;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'boolOr', {
    get: function() {
      if (this._m_boolOr !== undefined)
        return this._m_boolOr;
      this._m_boolOr = ( ((!(false)) || (false))  | 0);
      return this._m_boolOr;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'f2pi', {
    get: function() {
      if (this._m_f2pi !== undefined)
        return this._m_f2pi;
      this._m_f2pi = 6.28;
      return this._m_f2pi;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'fSumToInt', {
    get: function() {
      if (this._m_fSumToInt !== undefined)
        return this._m_fSumToInt;
      this._m_fSumToInt = Math.trunc((this.f2pi + this.fE));
      return this._m_fSumToInt;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'fE', {
    get: function() {
      if (this._m_fE !== undefined)
        return this._m_fE;
      this._m_fE = 2.72;
      return this._m_fE;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'i42', {
    get: function() {
      if (this._m_i42 !== undefined)
        return this._m_i42;
      this._m_i42 = 42;
      return this._m_i42;
    }
  });
  Object.defineProperty(ExprOpsParens.prototype, 'strConcatToI', {
    get: function() {
      if (this._m_strConcatToI !== undefined)
        return this._m_strConcatToI;
      this._m_strConcatToI = Number.parseInt(this.str0To4 + this.str5To9, 10);
      return this._m_strConcatToI;
    }
  });

  return ExprOpsParens;
})();
ExprOpsParens_.ExprOpsParens = ExprOpsParens;
});

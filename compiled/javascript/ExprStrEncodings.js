// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprStrEncodings || (root.ExprStrEncodings = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprStrEncodings_, KaitaiStream) {
var ExprStrEncodings = (function() {
  function ExprStrEncodings(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprStrEncodings.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf1), "ASCII");
    this.lenOf2 = this._io.readU2le();
    this.str2 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf2), "UTF-8");
    this.lenOf3 = this._io.readU2le();
    this.str3 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf3), "Shift_JIS");
    this.lenOf4 = this._io.readU2le();
    this.str4 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf4), "IBM437");
  }
  Object.defineProperty(ExprStrEncodings.prototype, 'str1Eq', {
    get: function() {
      if (this._m_str1Eq !== undefined)
        return this._m_str1Eq;
      this._m_str1Eq = this.str1 == "Some ASCII";
      return this._m_str1Eq;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str2Eq', {
    get: function() {
      if (this._m_str2Eq !== undefined)
        return this._m_str2Eq;
      this._m_str2Eq = this.str2 == "\u3053\u3093\u306b\u3061\u306f";
      return this._m_str2Eq;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str3Eq', {
    get: function() {
      if (this._m_str3Eq !== undefined)
        return this._m_str3Eq;
      this._m_str3Eq = this.str3 == "\u3053\u3093\u306b\u3061\u306f";
      return this._m_str3Eq;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str3EqStr2', {
    get: function() {
      if (this._m_str3EqStr2 !== undefined)
        return this._m_str3EqStr2;
      this._m_str3EqStr2 = this.str3 == this.str2;
      return this._m_str3EqStr2;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str4Eq', {
    get: function() {
      if (this._m_str4Eq !== undefined)
        return this._m_str4Eq;
      this._m_str4Eq = this.str4 == "\u2591\u2592\u2593";
      return this._m_str4Eq;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str4GtStrCalc', {
    get: function() {
      if (this._m_str4GtStrCalc !== undefined)
        return this._m_str4GtStrCalc;
      this._m_str4GtStrCalc = this.str4 > "\u2524";
      return this._m_str4GtStrCalc;
    }
  });
  Object.defineProperty(ExprStrEncodings.prototype, 'str4GtStrFromBytes', {
    get: function() {
      if (this._m_str4GtStrFromBytes !== undefined)
        return this._m_str4GtStrFromBytes;
      this._m_str4GtStrFromBytes = this.str4 > KaitaiStream.bytesToStr([180], "IBM437");
      return this._m_str4GtStrFromBytes;
    }
  });

  return ExprStrEncodings;
})();
ExprStrEncodings_.ExprStrEncodings = ExprStrEncodings;
});

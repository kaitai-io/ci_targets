// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprStrOps || (root.ExprStrOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprStrOps_, KaitaiStream) {
var ExprStrOps = (function() {
  function ExprStrOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprStrOps.prototype._read = function() {
    this.one = KaitaiStream.bytesToStr(this._io.readBytes(5), "ASCII");
  }
  Object.defineProperty(ExprStrOps.prototype, 'oneLen', {
    get: function() {
      if (this._m_oneLen !== undefined)
        return this._m_oneLen;
      this._m_oneLen = this.one.length;
      return this._m_oneLen;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'oneRev', {
    get: function() {
      if (this._m_oneRev !== undefined)
        return this._m_oneRev;
      this._m_oneRev = Array.from(this.one).reverse().join('');
      return this._m_oneRev;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'oneSubstr0To0', {
    get: function() {
      if (this._m_oneSubstr0To0 !== undefined)
        return this._m_oneSubstr0To0;
      this._m_oneSubstr0To0 = this.one.substring(0, 0);
      return this._m_oneSubstr0To0;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'oneSubstr0To3', {
    get: function() {
      if (this._m_oneSubstr0To3 !== undefined)
        return this._m_oneSubstr0To3;
      this._m_oneSubstr0To3 = this.one.substring(0, 3);
      return this._m_oneSubstr0To3;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'oneSubstr2To5', {
    get: function() {
      if (this._m_oneSubstr2To5 !== undefined)
        return this._m_oneSubstr2To5;
      this._m_oneSubstr2To5 = this.one.substring(2, 5);
      return this._m_oneSubstr2To5;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'oneSubstr3To3', {
    get: function() {
      if (this._m_oneSubstr3To3 !== undefined)
        return this._m_oneSubstr3To3;
      this._m_oneSubstr3To3 = this.one.substring(3, 3);
      return this._m_oneSubstr3To3;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'toIAttr', {
    get: function() {
      if (this._m_toIAttr !== undefined)
        return this._m_toIAttr;
      this._m_toIAttr = Number.parseInt("9173", 10);
      return this._m_toIAttr;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'toIR10', {
    get: function() {
      if (this._m_toIR10 !== undefined)
        return this._m_toIR10;
      this._m_toIR10 = Number.parseInt("-072", 10);
      return this._m_toIR10;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'toIR16', {
    get: function() {
      if (this._m_toIR16 !== undefined)
        return this._m_toIR16;
      this._m_toIR16 = Number.parseInt("47cf", 16);
      return this._m_toIR16;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'toIR2', {
    get: function() {
      if (this._m_toIR2 !== undefined)
        return this._m_toIR2;
      this._m_toIR2 = Number.parseInt("1010110", 2);
      return this._m_toIR2;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'toIR8', {
    get: function() {
      if (this._m_toIR8 !== undefined)
        return this._m_toIR8;
      this._m_toIR8 = Number.parseInt("721", 8);
      return this._m_toIR8;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'two', {
    get: function() {
      if (this._m_two !== undefined)
        return this._m_two;
      this._m_two = "0123456789";
      return this._m_two;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'twoLen', {
    get: function() {
      if (this._m_twoLen !== undefined)
        return this._m_twoLen;
      this._m_twoLen = this.two.length;
      return this._m_twoLen;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'twoRev', {
    get: function() {
      if (this._m_twoRev !== undefined)
        return this._m_twoRev;
      this._m_twoRev = Array.from(this.two).reverse().join('');
      return this._m_twoRev;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'twoSubstr0To10', {
    get: function() {
      if (this._m_twoSubstr0To10 !== undefined)
        return this._m_twoSubstr0To10;
      this._m_twoSubstr0To10 = this.two.substring(0, 10);
      return this._m_twoSubstr0To10;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'twoSubstr0To7', {
    get: function() {
      if (this._m_twoSubstr0To7 !== undefined)
        return this._m_twoSubstr0To7;
      this._m_twoSubstr0To7 = this.two.substring(0, 7);
      return this._m_twoSubstr0To7;
    }
  });
  Object.defineProperty(ExprStrOps.prototype, 'twoSubstr4To10', {
    get: function() {
      if (this._m_twoSubstr4To10 !== undefined)
        return this._m_twoSubstr4To10;
      this._m_twoSubstr4To10 = this.two.substring(4, 10);
      return this._m_twoSubstr4To10;
    }
  });

  return ExprStrOps;
})();
ExprStrOps_.ExprStrOps = ExprStrOps;
});

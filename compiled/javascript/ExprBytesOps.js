// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprBytesOps || (root.ExprBytesOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprBytesOps_, KaitaiStream) {
var ExprBytesOps = (function() {
  function ExprBytesOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprBytesOps.prototype._read = function() {
    this.one = this._io.readBytes(3);
  }
  Object.defineProperty(ExprBytesOps.prototype, 'oneFirst', {
    get: function() {
      if (this._m_oneFirst !== undefined)
        return this._m_oneFirst;
      this._m_oneFirst = this.one[0];
      return this._m_oneFirst;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneLast', {
    get: function() {
      if (this._m_oneLast !== undefined)
        return this._m_oneLast;
      this._m_oneLast = this.one[this.one.length - 1];
      return this._m_oneLast;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneMax', {
    get: function() {
      if (this._m_oneMax !== undefined)
        return this._m_oneMax;
      this._m_oneMax = KaitaiStream.arrayMax(this.one);
      return this._m_oneMax;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneMid', {
    get: function() {
      if (this._m_oneMid !== undefined)
        return this._m_oneMid;
      this._m_oneMid = this.one[1];
      return this._m_oneMid;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneMin', {
    get: function() {
      if (this._m_oneMin !== undefined)
        return this._m_oneMin;
      this._m_oneMin = KaitaiStream.arrayMin(this.one);
      return this._m_oneMin;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneSize', {
    get: function() {
      if (this._m_oneSize !== undefined)
        return this._m_oneSize;
      this._m_oneSize = this.one.length;
      return this._m_oneSize;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'oneToS', {
    get: function() {
      if (this._m_oneToS !== undefined)
        return this._m_oneToS;
      this._m_oneToS = KaitaiStream.bytesToStr(this.one, "IBM866");
      return this._m_oneToS;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'two', {
    get: function() {
      if (this._m_two !== undefined)
        return this._m_two;
      this._m_two = [65, 255, 75];
      return this._m_two;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoFirst', {
    get: function() {
      if (this._m_twoFirst !== undefined)
        return this._m_twoFirst;
      this._m_twoFirst = this.two[0];
      return this._m_twoFirst;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoLast', {
    get: function() {
      if (this._m_twoLast !== undefined)
        return this._m_twoLast;
      this._m_twoLast = this.two[this.two.length - 1];
      return this._m_twoLast;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoMax', {
    get: function() {
      if (this._m_twoMax !== undefined)
        return this._m_twoMax;
      this._m_twoMax = KaitaiStream.arrayMax(this.two);
      return this._m_twoMax;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoMid', {
    get: function() {
      if (this._m_twoMid !== undefined)
        return this._m_twoMid;
      this._m_twoMid = this.two[1];
      return this._m_twoMid;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoMin', {
    get: function() {
      if (this._m_twoMin !== undefined)
        return this._m_twoMin;
      this._m_twoMin = KaitaiStream.arrayMin(this.two);
      return this._m_twoMin;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoSize', {
    get: function() {
      if (this._m_twoSize !== undefined)
        return this._m_twoSize;
      this._m_twoSize = this.two.length;
      return this._m_twoSize;
    }
  });
  Object.defineProperty(ExprBytesOps.prototype, 'twoToS', {
    get: function() {
      if (this._m_twoToS !== undefined)
        return this._m_twoToS;
      this._m_twoToS = KaitaiStream.bytesToStr(this.two, "IBM866");
      return this._m_twoToS;
    }
  });

  return ExprBytesOps;
})();
ExprBytesOps_.ExprBytesOps = ExprBytesOps;
});

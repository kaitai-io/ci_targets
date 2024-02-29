// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprCalcArrayOps || (root.ExprCalcArrayOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprCalcArrayOps_, KaitaiStream) {
var ExprCalcArrayOps = (function() {
  function ExprCalcArrayOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprCalcArrayOps.prototype._read = function() {
  }
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArrayMid', {
    get: function() {
      if (this._m_doubleArrayMid !== undefined)
        return this._m_doubleArrayMid;
      this._m_doubleArrayMid = this.doubleArray[1];
      return this._m_doubleArrayMid;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArraySize', {
    get: function() {
      if (this._m_strArraySize !== undefined)
        return this._m_strArraySize;
      this._m_strArraySize = this.strArray.length;
      return this._m_strArraySize;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArrayMid', {
    get: function() {
      if (this._m_intArrayMid !== undefined)
        return this._m_intArrayMid;
      this._m_intArrayMid = this.intArray[1];
      return this._m_intArrayMid;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArrayLast', {
    get: function() {
      if (this._m_doubleArrayLast !== undefined)
        return this._m_doubleArrayLast;
      this._m_doubleArrayLast = this.doubleArray[this.doubleArray.length - 1];
      return this._m_doubleArrayLast;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArrayMax', {
    get: function() {
      if (this._m_doubleArrayMax !== undefined)
        return this._m_doubleArrayMax;
      this._m_doubleArrayMax = KaitaiStream.arrayMax(this.doubleArray);
      return this._m_doubleArrayMax;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArray', {
    get: function() {
      if (this._m_intArray !== undefined)
        return this._m_intArray;
      this._m_intArray = [10, 25, 50, 100, 200, 500, 1000];
      return this._m_intArray;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArrayMin', {
    get: function() {
      if (this._m_doubleArrayMin !== undefined)
        return this._m_doubleArrayMin;
      this._m_doubleArrayMin = KaitaiStream.arrayMin(this.doubleArray);
      return this._m_doubleArrayMin;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArrayMid', {
    get: function() {
      if (this._m_strArrayMid !== undefined)
        return this._m_strArrayMid;
      this._m_strArrayMid = this.strArray[1];
      return this._m_strArrayMid;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArrayMin', {
    get: function() {
      if (this._m_intArrayMin !== undefined)
        return this._m_intArrayMin;
      this._m_intArrayMin = KaitaiStream.arrayMin(this.intArray);
      return this._m_intArrayMin;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArrayMax', {
    get: function() {
      if (this._m_intArrayMax !== undefined)
        return this._m_intArrayMax;
      this._m_intArrayMax = KaitaiStream.arrayMax(this.intArray);
      return this._m_intArrayMax;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArraySize', {
    get: function() {
      if (this._m_intArraySize !== undefined)
        return this._m_intArraySize;
      this._m_intArraySize = this.intArray.length;
      return this._m_intArraySize;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArraySize', {
    get: function() {
      if (this._m_doubleArraySize !== undefined)
        return this._m_doubleArraySize;
      this._m_doubleArraySize = this.doubleArray.length;
      return this._m_doubleArraySize;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArray', {
    get: function() {
      if (this._m_doubleArray !== undefined)
        return this._m_doubleArray;
      this._m_doubleArray = [10.0, 25.0, 50.0, 100.0, 3.14159];
      return this._m_doubleArray;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'doubleArrayFirst', {
    get: function() {
      if (this._m_doubleArrayFirst !== undefined)
        return this._m_doubleArrayFirst;
      this._m_doubleArrayFirst = this.doubleArray[0];
      return this._m_doubleArrayFirst;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArrayFirst', {
    get: function() {
      if (this._m_intArrayFirst !== undefined)
        return this._m_intArrayFirst;
      this._m_intArrayFirst = this.intArray[0];
      return this._m_intArrayFirst;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'intArrayLast', {
    get: function() {
      if (this._m_intArrayLast !== undefined)
        return this._m_intArrayLast;
      this._m_intArrayLast = this.intArray[this.intArray.length - 1];
      return this._m_intArrayLast;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArrayMin', {
    get: function() {
      if (this._m_strArrayMin !== undefined)
        return this._m_strArrayMin;
      this._m_strArrayMin = KaitaiStream.arrayMin(this.strArray);
      return this._m_strArrayMin;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArray', {
    get: function() {
      if (this._m_strArray !== undefined)
        return this._m_strArray;
      this._m_strArray = ["un", "deux", "trois", "quatre"];
      return this._m_strArray;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArrayFirst', {
    get: function() {
      if (this._m_strArrayFirst !== undefined)
        return this._m_strArrayFirst;
      this._m_strArrayFirst = this.strArray[0];
      return this._m_strArrayFirst;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArrayMax', {
    get: function() {
      if (this._m_strArrayMax !== undefined)
        return this._m_strArrayMax;
      this._m_strArrayMax = KaitaiStream.arrayMax(this.strArray);
      return this._m_strArrayMax;
    }
  });
  Object.defineProperty(ExprCalcArrayOps.prototype, 'strArrayLast', {
    get: function() {
      if (this._m_strArrayLast !== undefined)
        return this._m_strArrayLast;
      this._m_strArrayLast = this.strArray[this.strArray.length - 1];
      return this._m_strArrayLast;
    }
  });

  return ExprCalcArrayOps;
})();
ExprCalcArrayOps_.ExprCalcArrayOps = ExprCalcArrayOps;
});

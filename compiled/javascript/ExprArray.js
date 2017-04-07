// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ExprArray = (function() {
  function ExprArray(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.aint = new Array(4);
    for (var i = 0; i < 4; i++) {
      this.aint[i] = this._io.readU4le();
    }
    this.afloat = new Array(3);
    for (var i = 0; i < 3; i++) {
      this.afloat[i] = this._io.readF8le();
    }
    this.astr = new Array(3);
    for (var i = 0; i < 3; i++) {
      this.astr[i] = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }
  }
  Object.defineProperty(ExprArray.prototype, 'aintFirst', {
    get: function() {
      if (this._m_aintFirst !== undefined)
        return this._m_aintFirst;
      this._m_aintFirst = this.aint[0];
      return this._m_aintFirst;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'afloatSize', {
    get: function() {
      if (this._m_afloatSize !== undefined)
        return this._m_afloatSize;
      this._m_afloatSize = this.afloat.length;
      return this._m_afloatSize;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'astrSize', {
    get: function() {
      if (this._m_astrSize !== undefined)
        return this._m_astrSize;
      this._m_astrSize = this.astr.length;
      return this._m_astrSize;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'aintMin', {
    get: function() {
      if (this._m_aintMin !== undefined)
        return this._m_aintMin;
      this._m_aintMin = KaitaiStream.arrayMin(this.aint);
      return this._m_aintMin;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'afloatMin', {
    get: function() {
      if (this._m_afloatMin !== undefined)
        return this._m_afloatMin;
      this._m_afloatMin = KaitaiStream.arrayMin(this.afloat);
      return this._m_afloatMin;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'aintSize', {
    get: function() {
      if (this._m_aintSize !== undefined)
        return this._m_aintSize;
      this._m_aintSize = this.aint.length;
      return this._m_aintSize;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'aintLast', {
    get: function() {
      if (this._m_aintLast !== undefined)
        return this._m_aintLast;
      this._m_aintLast = this.aint[this.aint.length - 1];
      return this._m_aintLast;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'afloatLast', {
    get: function() {
      if (this._m_afloatLast !== undefined)
        return this._m_afloatLast;
      this._m_afloatLast = this.afloat[this.afloat.length - 1];
      return this._m_afloatLast;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'astrFirst', {
    get: function() {
      if (this._m_astrFirst !== undefined)
        return this._m_astrFirst;
      this._m_astrFirst = this.astr[0];
      return this._m_astrFirst;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'astrLast', {
    get: function() {
      if (this._m_astrLast !== undefined)
        return this._m_astrLast;
      this._m_astrLast = this.astr[this.astr.length - 1];
      return this._m_astrLast;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'aintMax', {
    get: function() {
      if (this._m_aintMax !== undefined)
        return this._m_aintMax;
      this._m_aintMax = KaitaiStream.arrayMax(this.aint);
      return this._m_aintMax;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'afloatFirst', {
    get: function() {
      if (this._m_afloatFirst !== undefined)
        return this._m_afloatFirst;
      this._m_afloatFirst = this.afloat[0];
      return this._m_afloatFirst;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'astrMin', {
    get: function() {
      if (this._m_astrMin !== undefined)
        return this._m_astrMin;
      this._m_astrMin = KaitaiStream.arrayMin(this.astr);
      return this._m_astrMin;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'astrMax', {
    get: function() {
      if (this._m_astrMax !== undefined)
        return this._m_astrMax;
      this._m_astrMax = KaitaiStream.arrayMax(this.astr);
      return this._m_astrMax;
    }
  });
  Object.defineProperty(ExprArray.prototype, 'afloatMax', {
    get: function() {
      if (this._m_afloatMax !== undefined)
        return this._m_afloatMax;
      this._m_afloatMax = KaitaiStream.arrayMax(this.afloat);
      return this._m_afloatMax;
    }
  });

  return ExprArray;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ExprArray', [], function() {
    return ExprArray;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ExprArray;
}

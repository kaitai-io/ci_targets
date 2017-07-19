// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var FloatToI = (function() {
  function FloatToI(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  FloatToI.prototype._read = function() {
    this.singleValue = this._io.readF4le();
    this.doubleValue = this._io.readF8le();
  }
  Object.defineProperty(FloatToI.prototype, 'float2I', {
    get: function() {
      if (this._m_float2I !== undefined)
        return this._m_float2I;
      this._m_float2I = Math.trunc(this.calcFloat2);
      return this._m_float2I;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'calcFloat1', {
    get: function() {
      if (this._m_calcFloat1 !== undefined)
        return this._m_calcFloat1;
      this._m_calcFloat1 = 1.234;
      return this._m_calcFloat1;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'float4I', {
    get: function() {
      if (this._m_float4I !== undefined)
        return this._m_float4I;
      this._m_float4I = Math.trunc(this.calcFloat4);
      return this._m_float4I;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'calcFloat3', {
    get: function() {
      if (this._m_calcFloat3 !== undefined)
        return this._m_calcFloat3;
      this._m_calcFloat3 = 1.9;
      return this._m_calcFloat3;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'calcFloat2', {
    get: function() {
      if (this._m_calcFloat2 !== undefined)
        return this._m_calcFloat2;
      this._m_calcFloat2 = 1.5;
      return this._m_calcFloat2;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'float1I', {
    get: function() {
      if (this._m_float1I !== undefined)
        return this._m_float1I;
      this._m_float1I = Math.trunc(this.calcFloat1);
      return this._m_float1I;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'doubleI', {
    get: function() {
      if (this._m_doubleI !== undefined)
        return this._m_doubleI;
      this._m_doubleI = Math.trunc(this.doubleValue);
      return this._m_doubleI;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'float3I', {
    get: function() {
      if (this._m_float3I !== undefined)
        return this._m_float3I;
      this._m_float3I = Math.trunc(this.calcFloat3);
      return this._m_float3I;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'singleI', {
    get: function() {
      if (this._m_singleI !== undefined)
        return this._m_singleI;
      this._m_singleI = Math.trunc(this.singleValue);
      return this._m_singleI;
    }
  });
  Object.defineProperty(FloatToI.prototype, 'calcFloat4', {
    get: function() {
      if (this._m_calcFloat4 !== undefined)
        return this._m_calcFloat4;
      this._m_calcFloat4 = -2.7;
      return this._m_calcFloat4;
    }
  });

  return FloatToI;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('FloatToI', [], function() {
    return FloatToI;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = FloatToI;
}

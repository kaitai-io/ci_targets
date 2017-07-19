// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var EnumToI = (function() {
  EnumToI.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function EnumToI(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumToI.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }
  Object.defineProperty(EnumToI.prototype, 'pet1I', {
    get: function() {
      if (this._m_pet1I !== undefined)
        return this._m_pet1I;
      this._m_pet1I = this.pet1;
      return this._m_pet1I;
    }
  });
  Object.defineProperty(EnumToI.prototype, 'pet1Mod', {
    get: function() {
      if (this._m_pet1Mod !== undefined)
        return this._m_pet1Mod;
      this._m_pet1Mod = (this.pet1 + 32768);
      return this._m_pet1Mod;
    }
  });
  Object.defineProperty(EnumToI.prototype, 'oneLtTwo', {
    get: function() {
      if (this._m_oneLtTwo !== undefined)
        return this._m_oneLtTwo;
      this._m_oneLtTwo = this.pet1 < this.pet2;
      return this._m_oneLtTwo;
    }
  });

  return EnumToI;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EnumToI', [], function() {
    return EnumToI;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EnumToI;
}

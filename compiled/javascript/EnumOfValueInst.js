// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var EnumOfValueInst = (function() {
  EnumOfValueInst.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function EnumOfValueInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }
  Object.defineProperty(EnumOfValueInst.prototype, 'pet3', {
    get: function() {
      if (this._m_pet3 !== undefined)
        return this._m_pet3;
      this._m_pet3 = (this.pet1 == EnumOfValueInst.Animal.CAT ? 4 : 12);
      return this._m_pet3;
    }
  });
  Object.defineProperty(EnumOfValueInst.prototype, 'pet4', {
    get: function() {
      if (this._m_pet4 !== undefined)
        return this._m_pet4;
      this._m_pet4 = (this.pet1 == EnumOfValueInst.Animal.CAT ? EnumOfValueInst.Animal.DOG : EnumOfValueInst.Animal.CHICKEN);
      return this._m_pet4;
    }
  });

  return EnumOfValueInst;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EnumOfValueInst', [], function() {
    return EnumOfValueInst;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EnumOfValueInst;
}

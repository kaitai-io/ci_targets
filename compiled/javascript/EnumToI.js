// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumToI = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
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
  Object.defineProperty(EnumToI.prototype, 'pet1IToS', {
    get: function() {
      if (this._m_pet1IToS !== undefined)
        return this._m_pet1IToS;
      this._m_pet1IToS = (this.pet1).toString(10);
      return this._m_pet1IToS;
    }
  });
  Object.defineProperty(EnumToI.prototype, 'pet1I', {
    get: function() {
      if (this._m_pet1I !== undefined)
        return this._m_pet1I;
      this._m_pet1I = this.pet1;
      return this._m_pet1I;
    }
  });
  Object.defineProperty(EnumToI.prototype, 'pet1EqInt', {
    get: function() {
      if (this._m_pet1EqInt !== undefined)
        return this._m_pet1EqInt;
      this._m_pet1EqInt = this.pet1 == 7;
      return this._m_pet1EqInt;
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
  Object.defineProperty(EnumToI.prototype, 'pet1Mod', {
    get: function() {
      if (this._m_pet1Mod !== undefined)
        return this._m_pet1Mod;
      this._m_pet1Mod = (this.pet1 + 32768);
      return this._m_pet1Mod;
    }
  });
  Object.defineProperty(EnumToI.prototype, 'pet2EqInt', {
    get: function() {
      if (this._m_pet2EqInt !== undefined)
        return this._m_pet2EqInt;
      this._m_pet2EqInt = this.pet2 == 5;
      return this._m_pet2EqInt;
    }
  });

  return EnumToI;
})();
return EnumToI;
}));

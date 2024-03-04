// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumToIInvalid || (root.EnumToIInvalid = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumToIInvalid_, KaitaiStream) {
var EnumToIInvalid = (function() {
  EnumToIInvalid.Animal = Object.freeze({
    DOG: 102,
    CAT: 124,

    102: "DOG",
    124: "CAT",
  });

  function EnumToIInvalid(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumToIInvalid.prototype._read = function() {
    this.pet1 = this._io.readU1();
    this.pet2 = this._io.readU1();
  }
  Object.defineProperty(EnumToIInvalid.prototype, 'oneLtTwo', {
    get: function() {
      if (this._m_oneLtTwo !== undefined)
        return this._m_oneLtTwo;
      this._m_oneLtTwo = this.pet1 < this.pet2;
      return this._m_oneLtTwo;
    }
  });
  Object.defineProperty(EnumToIInvalid.prototype, 'pet2EqIntF', {
    get: function() {
      if (this._m_pet2EqIntF !== undefined)
        return this._m_pet2EqIntF;
      this._m_pet2EqIntF = this.pet2 == 110;
      return this._m_pet2EqIntF;
    }
  });
  Object.defineProperty(EnumToIInvalid.prototype, 'pet2EqIntT', {
    get: function() {
      if (this._m_pet2EqIntT !== undefined)
        return this._m_pet2EqIntT;
      this._m_pet2EqIntT = this.pet2 == 111;
      return this._m_pet2EqIntT;
    }
  });
  Object.defineProperty(EnumToIInvalid.prototype, 'pet2I', {
    get: function() {
      if (this._m_pet2I !== undefined)
        return this._m_pet2I;
      this._m_pet2I = this.pet2;
      return this._m_pet2I;
    }
  });
  Object.defineProperty(EnumToIInvalid.prototype, 'pet2IToS', {
    get: function() {
      if (this._m_pet2IToS !== undefined)
        return this._m_pet2IToS;
      this._m_pet2IToS = (this.pet2).toString();
      return this._m_pet2IToS;
    }
  });
  Object.defineProperty(EnumToIInvalid.prototype, 'pet2Mod', {
    get: function() {
      if (this._m_pet2Mod !== undefined)
        return this._m_pet2Mod;
      this._m_pet2Mod = (this.pet2 + 32768);
      return this._m_pet2Mod;
    }
  });

  return EnumToIInvalid;
})();
EnumToIInvalid_.EnumToIInvalid = EnumToIInvalid;
});

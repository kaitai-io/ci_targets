// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './EnumToIClassBorder2'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./EnumToIClassBorder2'));
  } else {
    root.EnumToIClassBorder1 = factory(root.KaitaiStream, root.EnumToIClassBorder2);
  }
}(this, function (KaitaiStream, EnumToIClassBorder2) {
var EnumToIClassBorder1 = (function() {
  EnumToIClassBorder1.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function EnumToIClassBorder1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumToIClassBorder1.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }
  Object.defineProperty(EnumToIClassBorder1.prototype, 'someDog', {
    get: function() {
      if (this._m_someDog !== undefined)
        return this._m_someDog;
      this._m_someDog = 4;
      return this._m_someDog;
    }
  });
  Object.defineProperty(EnumToIClassBorder1.prototype, 'checker', {
    get: function() {
      if (this._m_checker !== undefined)
        return this._m_checker;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_checker = new EnumToIClassBorder2(this._io, this, null, this._root);
      this._io.seek(_pos);
      return this._m_checker;
    }
  });

  return EnumToIClassBorder1;
})();
return EnumToIClassBorder1;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './EnumToIClassBorder2'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./EnumToIClassBorder2'));
  } else {
    factory(root.EnumToIClassBorder1 || (root.EnumToIClassBorder1 = {}), root.KaitaiStream, root.EnumToIClassBorder2 || (root.EnumToIClassBorder2 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (EnumToIClassBorder1_, KaitaiStream, EnumToIClassBorder2_) {
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
  Object.defineProperty(EnumToIClassBorder1.prototype, 'checker', {
    get: function() {
      if (this._m_checker !== undefined)
        return this._m_checker;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_checker = new EnumToIClassBorder2_.EnumToIClassBorder2(this._io, this, null, this._root);
      this._io.seek(_pos);
      return this._m_checker;
    }
  });
  Object.defineProperty(EnumToIClassBorder1.prototype, 'someDog', {
    get: function() {
      if (this._m_someDog !== undefined)
        return this._m_someDog;
      this._m_someDog = 4;
      return this._m_someDog;
    }
  });

  return EnumToIClassBorder1;
})();
EnumToIClassBorder1_.EnumToIClassBorder1 = EnumToIClassBorder1;
});

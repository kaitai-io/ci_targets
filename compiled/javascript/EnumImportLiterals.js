// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumImportLiterals || (root.EnumImportLiterals = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumImportLiterals_, KaitaiStream) {
var EnumImportLiterals = (function() {
  function EnumImportLiterals(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumImportLiterals.prototype._read = function() {
  }
  Object.defineProperty(EnumImportLiterals.prototype, 'pet1Eq', {
    get: function() {
      if (this._m_pet1Eq !== undefined)
        return this._m_pet1Eq;
      this._m_pet1Eq = (true ? Enum0.Animal.CHICKEN : Enum0.Animal.DOG) == Enum0.Animal.CHICKEN;
      return this._m_pet1Eq;
    }
  });
  Object.defineProperty(EnumImportLiterals.prototype, 'pet1ToI', {
    get: function() {
      if (this._m_pet1ToI !== undefined)
        return this._m_pet1ToI;
      this._m_pet1ToI = Enum0.Animal.CAT;
      return this._m_pet1ToI;
    }
  });
  Object.defineProperty(EnumImportLiterals.prototype, 'pet2', {
    get: function() {
      if (this._m_pet2 !== undefined)
        return this._m_pet2;
      this._m_pet2 = EnumDeep.Container1.Container2.Animal.HARE;
      return this._m_pet2;
    }
  });

  return EnumImportLiterals;
})();
EnumImportLiterals_.EnumImportLiterals = EnumImportLiterals;
});

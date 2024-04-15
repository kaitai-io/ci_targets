// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './Enum0', './EnumDeep'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./Enum0'), require('./EnumDeep'));
  } else {
    factory(root.EnumImportLiterals || (root.EnumImportLiterals = {}), root.KaitaiStream, root.Enum0 || (root.Enum0 = {}), root.EnumDeep || (root.EnumDeep = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (EnumImportLiterals_, KaitaiStream, Enum0_, EnumDeep_) {
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
      this._m_pet1Eq = (true ? Enum0_.Enum0.Animal.CHICKEN : Enum0_.Enum0.Animal.DOG) == Enum0_.Enum0.Animal.CHICKEN;
      return this._m_pet1Eq;
    }
  });
  Object.defineProperty(EnumImportLiterals.prototype, 'pet1ToI', {
    get: function() {
      if (this._m_pet1ToI !== undefined)
        return this._m_pet1ToI;
      this._m_pet1ToI = Enum0_.Enum0.Animal.CAT;
      return this._m_pet1ToI;
    }
  });
  Object.defineProperty(EnumImportLiterals.prototype, 'pet2', {
    get: function() {
      if (this._m_pet2 !== undefined)
        return this._m_pet2;
      this._m_pet2 = EnumDeep_.EnumDeep.Container1.Container2.Animal.HARE;
      return this._m_pet2;
    }
  });

  return EnumImportLiterals;
})();
EnumImportLiterals_.EnumImportLiterals = EnumImportLiterals;
});

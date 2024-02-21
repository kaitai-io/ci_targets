// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Enum0 || (root.Enum0 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Enum0_, KaitaiStream) {
var Enum0 = (function() {
  Enum0.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function Enum0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Enum0.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }

  return Enum0;
})();
Enum0_.Enum0 = Enum0;
});

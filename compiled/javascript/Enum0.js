// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Enum0 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
return Enum0;
}));

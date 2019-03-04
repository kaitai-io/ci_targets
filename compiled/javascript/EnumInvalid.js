// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumInvalid = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var EnumInvalid = (function() {
  EnumInvalid.Animal = Object.freeze({
    DOG: 102,
    CAT: 124,

    102: "DOG",
    124: "CAT",
  });

  function EnumInvalid(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumInvalid.prototype._read = function() {
    this.pet1 = this._io.readU1();
    this.pet2 = this._io.readU1();
  }

  return EnumInvalid;
})();
return EnumInvalid;
}));

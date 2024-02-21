// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumInvalid || (root.EnumInvalid = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumInvalid_, KaitaiStream) {
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
EnumInvalid_.EnumInvalid = EnumInvalid;
});

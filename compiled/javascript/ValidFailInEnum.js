// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailInEnum || (root.ValidFailInEnum = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailInEnum_, KaitaiStream) {
var ValidFailInEnum = (function() {
  ValidFailInEnum.Animal = Object.freeze({
    DOG: 4,
    CHICKEN: 12,

    4: "DOG",
    12: "CHICKEN",
  });

  function ValidFailInEnum(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailInEnum.prototype._read = function() {
    this.foo = this._io.readU4le();
    if (!Object.prototype.hasOwnProperty.call(ValidFailInEnum.Animal, this.foo)) {
      throw new KaitaiStream.ValidationNotInEnumError(this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailInEnum;
})();
ValidFailInEnum_.ValidFailInEnum = ValidFailInEnum;
});

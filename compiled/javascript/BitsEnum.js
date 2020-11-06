// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsEnum = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var BitsEnum = (function() {
  BitsEnum.Animal = Object.freeze({
    CAT: 0,
    DOG: 1,
    HORSE: 4,
    PLATYPUS: 5,

    0: "CAT",
    1: "DOG",
    4: "HORSE",
    5: "PLATYPUS",
  });

  function BitsEnum(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsEnum.prototype._read = function() {
    this.one = this._io.readBitsIntBe(4);
    this.two = this._io.readBitsIntBe(8);
    this.three = this._io.readBitsIntBe(1);
  }

  return BitsEnum;
})();
return BitsEnum;
}));

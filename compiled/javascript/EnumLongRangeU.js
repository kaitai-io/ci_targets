// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumLongRangeU = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var EnumLongRangeU = (function() {
  EnumLongRangeU.Constants = Object.freeze({
    ZERO: 0,
    INT_MAX: 4294967295,
    INT_OVER_MAX: 4294967296,
    LONG_MAX: 9223372036854775807,

    0: "ZERO",
    4294967295: "INT_MAX",
    4294967296: "INT_OVER_MAX",
    9223372036854775807: "LONG_MAX",
  });

  function EnumLongRangeU(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumLongRangeU.prototype._read = function() {
    this.f1 = this._io.readU8be();
    this.f2 = this._io.readU8be();
    this.f3 = this._io.readU8be();
    this.f4 = this._io.readU8be();
  }

  return EnumLongRangeU;
})();
return EnumLongRangeU;
}));

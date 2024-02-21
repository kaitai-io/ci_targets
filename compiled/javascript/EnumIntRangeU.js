// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumIntRangeU || (root.EnumIntRangeU = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumIntRangeU_, KaitaiStream) {
var EnumIntRangeU = (function() {
  EnumIntRangeU.Constants = Object.freeze({
    ZERO: 0,
    INT_MAX: 4294967295,

    0: "ZERO",
    4294967295: "INT_MAX",
  });

  function EnumIntRangeU(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumIntRangeU.prototype._read = function() {
    this.f1 = this._io.readU4be();
    this.f2 = this._io.readU4be();
  }

  return EnumIntRangeU;
})();
EnumIntRangeU_.EnumIntRangeU = EnumIntRangeU;
});

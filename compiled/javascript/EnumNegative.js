// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumNegative || (root.EnumNegative = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumNegative_, KaitaiStream) {
var EnumNegative = (function() {
  EnumNegative.Constants = Object.freeze({
    NEGATIVE_ONE: -1,
    POSITIVE_ONE: 1,

    "-1": "NEGATIVE_ONE",
    1: "POSITIVE_ONE",
  });

  function EnumNegative(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumNegative.prototype._read = function() {
    this.f1 = this._io.readS1();
    this.f2 = this._io.readS1();
  }

  return EnumNegative;
})();
EnumNegative_.EnumNegative = EnumNegative;
});

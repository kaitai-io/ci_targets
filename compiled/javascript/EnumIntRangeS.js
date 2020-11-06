// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumIntRangeS = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var EnumIntRangeS = (function() {
  EnumIntRangeS.Constants = Object.freeze({
    INT_MIN: -2147483648,
    ZERO: 0,
    INT_MAX: 2147483647,

    "-2147483648": "INT_MIN",
    0: "ZERO",
    2147483647: "INT_MAX",
  });

  function EnumIntRangeS(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumIntRangeS.prototype._read = function() {
    this.f1 = this._io.readS4be();
    this.f2 = this._io.readS4be();
    this.f3 = this._io.readS4be();
  }

  return EnumIntRangeS;
})();
return EnumIntRangeS;
}));

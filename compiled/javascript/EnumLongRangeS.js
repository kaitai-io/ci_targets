// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumLongRangeS = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var EnumLongRangeS = (function() {
  EnumLongRangeS.Constants = Object.freeze({
    LONG_MIN: -9223372036854775808,
    INT_BELOW_MIN: -2147483649,
    INT_MIN: -2147483648,
    ZERO: 0,
    INT_MAX: 2147483647,
    INT_OVER_MAX: 2147483648,
    LONG_MAX: 9223372036854775807,

    "-9223372036854775808": "LONG_MIN",
    "-2147483649": "INT_BELOW_MIN",
    "-2147483648": "INT_MIN",
    0: "ZERO",
    2147483647: "INT_MAX",
    2147483648: "INT_OVER_MAX",
    9223372036854775807: "LONG_MAX",
  });

  function EnumLongRangeS(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumLongRangeS.prototype._read = function() {
    this.f1 = this._io.readS8be();
    this.f2 = this._io.readS8be();
    this.f3 = this._io.readS8be();
    this.f4 = this._io.readS8be();
    this.f5 = this._io.readS8be();
    this.f6 = this._io.readS8be();
    this.f7 = this._io.readS8be();
  }

  return EnumLongRangeS;
})();
return EnumLongRangeS;
}));

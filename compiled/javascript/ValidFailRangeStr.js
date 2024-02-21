// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRangeStr || (root.ValidFailRangeStr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRangeStr_, KaitaiStream) {
var ValidFailRangeStr = (function() {
  function ValidFailRangeStr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRangeStr.prototype._read = function() {
    this.foo = KaitaiStream.bytesToStr(this._io.readBytes(2), "ASCII");
    if (!(this.foo >= "P")) {
      throw new KaitaiStream.ValidationLessThanError("P", this.foo, this._io, "/seq/0");
    }
    if (!(this.foo <= "P1")) {
      throw new KaitaiStream.ValidationGreaterThanError("P1", this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailRangeStr;
})();
ValidFailRangeStr_.ValidFailRangeStr = ValidFailRangeStr;
});

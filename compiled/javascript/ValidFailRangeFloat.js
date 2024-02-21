// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRangeFloat || (root.ValidFailRangeFloat = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRangeFloat_, KaitaiStream) {
var ValidFailRangeFloat = (function() {
  function ValidFailRangeFloat(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRangeFloat.prototype._read = function() {
    this.foo = this._io.readF4le();
    if (!(this.foo >= 0.2)) {
      throw new KaitaiStream.ValidationLessThanError(0.2, this.foo, this._io, "/seq/0");
    }
    if (!(this.foo <= 0.4)) {
      throw new KaitaiStream.ValidationGreaterThanError(0.4, this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailRangeFloat;
})();
ValidFailRangeFloat_.ValidFailRangeFloat = ValidFailRangeFloat;
});

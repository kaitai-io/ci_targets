// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRangeBytes || (root.ValidFailRangeBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRangeBytes_, KaitaiStream) {
var ValidFailRangeBytes = (function() {
  function ValidFailRangeBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRangeBytes.prototype._read = function() {
    this.foo = this._io.readBytes(2);
    if (!((KaitaiStream.byteArrayCompare(this.foo, new Uint8Array([80])) >= 0))) {
      throw new KaitaiStream.ValidationLessThanError(new Uint8Array([80]), this.foo, this._io, "/seq/0");
    }
    if (!((KaitaiStream.byteArrayCompare(this.foo, new Uint8Array([80, 49])) <= 0))) {
      throw new KaitaiStream.ValidationGreaterThanError(new Uint8Array([80, 49]), this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailRangeBytes;
})();
ValidFailRangeBytes_.ValidFailRangeBytes = ValidFailRangeBytes;
});

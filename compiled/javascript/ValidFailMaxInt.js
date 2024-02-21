// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailMaxInt || (root.ValidFailMaxInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailMaxInt_, KaitaiStream) {
var ValidFailMaxInt = (function() {
  function ValidFailMaxInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailMaxInt.prototype._read = function() {
    this.foo = this._io.readU1();
    if (!(this.foo <= 12)) {
      throw new KaitaiStream.ValidationGreaterThanError(12, this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailMaxInt;
})();
ValidFailMaxInt_.ValidFailMaxInt = ValidFailMaxInt;
});

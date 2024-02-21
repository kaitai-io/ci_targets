// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailMinInt || (root.ValidFailMinInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailMinInt_, KaitaiStream) {
var ValidFailMinInt = (function() {
  function ValidFailMinInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailMinInt.prototype._read = function() {
    this.foo = this._io.readU1();
    if (!(this.foo >= 123)) {
      throw new KaitaiStream.ValidationLessThanError(123, this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailMinInt;
})();
ValidFailMinInt_.ValidFailMinInt = ValidFailMinInt;
});

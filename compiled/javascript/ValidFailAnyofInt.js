// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailAnyofInt || (root.ValidFailAnyofInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailAnyofInt_, KaitaiStream) {
var ValidFailAnyofInt = (function() {
  function ValidFailAnyofInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailAnyofInt.prototype._read = function() {
    this.foo = this._io.readU1();
    if (!( ((this.foo == 5) || (this.foo == 6) || (this.foo == 7) || (this.foo == 8) || (this.foo == 10) || (this.foo == 11) || (this.foo == 12) || (this.foo == 47)) )) {
      throw new KaitaiStream.ValidationNotAnyOfError(this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailAnyofInt;
})();
ValidFailAnyofInt_.ValidFailAnyofInt = ValidFailAnyofInt;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatAnyofInt || (root.ValidFailRepeatAnyofInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatAnyofInt_, KaitaiStream) {
var ValidFailRepeatAnyofInt = (function() {
  function ValidFailRepeatAnyofInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatAnyofInt.prototype._read = function() {
    this.foo = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.foo.push(this._io.readU1());
      if (!( ((this.foo[i] == 0) || (this.foo[i] == 1) || (this.foo[i] == 65)) )) {
        throw new KaitaiStream.ValidationNotAnyOfError(this.foo[i], this._io, "/seq/0");
      }
      i++;
    }
  }

  return ValidFailRepeatAnyofInt;
})();
ValidFailRepeatAnyofInt_.ValidFailRepeatAnyofInt = ValidFailRepeatAnyofInt;
});

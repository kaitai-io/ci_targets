// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatMaxInt || (root.ValidFailRepeatMaxInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatMaxInt_, KaitaiStream) {
var ValidFailRepeatMaxInt = (function() {
  function ValidFailRepeatMaxInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatMaxInt.prototype._read = function() {
    this.foo = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.foo.push(this._io.readU1());
      if (!(this.foo[i] <= 254)) {
        throw new KaitaiStream.ValidationGreaterThanError(254, this.foo[i], this._io, "/seq/0");
      }
      i++;
    }
  }

  return ValidFailRepeatMaxInt;
})();
ValidFailRepeatMaxInt_.ValidFailRepeatMaxInt = ValidFailRepeatMaxInt;
});

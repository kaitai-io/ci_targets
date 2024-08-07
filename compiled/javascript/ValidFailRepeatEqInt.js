// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatEqInt || (root.ValidFailRepeatEqInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatEqInt_, KaitaiStream) {
var ValidFailRepeatEqInt = (function() {
  function ValidFailRepeatEqInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatEqInt.prototype._read = function() {
    this.foo = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.foo.push(this._io.readU4be());
      if (!(this.foo[i] == 305419896)) {
        throw new KaitaiStream.ValidationNotEqualError(305419896, this.foo[i], this._io, "/seq/0");
      }
      i++;
    }
  }

  return ValidFailRepeatEqInt;
})();
ValidFailRepeatEqInt_.ValidFailRepeatEqInt = ValidFailRepeatEqInt;
});

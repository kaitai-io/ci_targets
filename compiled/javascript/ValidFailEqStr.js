// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailEqStr || (root.ValidFailEqStr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailEqStr_, KaitaiStream) {
var ValidFailEqStr = (function() {
  function ValidFailEqStr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailEqStr.prototype._read = function() {
    this.foo = KaitaiStream.bytesToStr(this._io.readBytes(4), "ASCII");
    if (!(this.foo == "BACK")) {
      throw new KaitaiStream.ValidationNotEqualError("BACK", this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailEqStr;
})();
ValidFailEqStr_.ValidFailEqStr = ValidFailEqStr;
});

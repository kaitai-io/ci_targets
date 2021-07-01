// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailEqStr = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
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
return ValidFailEqStr;
}));

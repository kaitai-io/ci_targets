// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailMaxInt = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
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
return ValidFailMaxInt;
}));

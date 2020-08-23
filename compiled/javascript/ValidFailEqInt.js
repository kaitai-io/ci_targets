// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailEqInt = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ValidFailEqInt = (function() {
  function ValidFailEqInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailEqInt.prototype._read = function() {
    this.foo = this._io.readU1();
    if (!(this.foo == 123)) {
      throw new KaitaiStream.ValidationNotEqualError(123, this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailEqInt;
})();
return ValidFailEqInt;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailMinInt = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
return ValidFailMinInt;
}));

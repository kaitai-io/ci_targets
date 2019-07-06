// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailEqBytes = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ValidFailEqBytes = (function() {
  function ValidFailEqBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailEqBytes.prototype._read = function() {
    this.foo = this._io.readBytes(2);
    if (!((KaitaiStream.byteArrayCompare(this.foo, [81, 65]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([81, 65], this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailEqBytes;
})();
return ValidFailEqBytes;
}));

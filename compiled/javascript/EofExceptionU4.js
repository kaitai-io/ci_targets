// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EofExceptionU4 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var EofExceptionU4 = (function() {
  function EofExceptionU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionU4.prototype._read = function() {
    this.prebuf = this._io.readBytes(9);
    this.failInt = this._io.readU4le();
  }

  return EofExceptionU4;
})();
return EofExceptionU4;
}));

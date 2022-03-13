// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsUnalignedB64Le = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var BitsUnalignedB64Le = (function() {
  function BitsUnalignedB64Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsUnalignedB64Le.prototype._read = function() {
    this.a = this._io.readBitsIntLe(1) != 0;
    this.b = this._io.readBitsIntLe(64);
    this.c = this._io.readBitsIntLe(7);
  }

  return BitsUnalignedB64Le;
})();
return BitsUnalignedB64Le;
}));

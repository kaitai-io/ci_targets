// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsUnalignedB32Le = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var BitsUnalignedB32Le = (function() {
  function BitsUnalignedB32Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsUnalignedB32Le.prototype._read = function() {
    this.a = this._io.readBitsIntLe(1) != 0;
    this.b = this._io.readBitsIntLe(32);
    this.c = this._io.readBitsIntLe(7);
  }

  return BitsUnalignedB32Le;
})();
return BitsUnalignedB32Le;
}));

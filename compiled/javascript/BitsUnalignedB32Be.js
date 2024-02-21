// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsUnalignedB32Be || (root.BitsUnalignedB32Be = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsUnalignedB32Be_, KaitaiStream) {
var BitsUnalignedB32Be = (function() {
  function BitsUnalignedB32Be(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsUnalignedB32Be.prototype._read = function() {
    this.a = this._io.readBitsIntBe(1) != 0;
    this.b = this._io.readBitsIntBe(32);
    this.c = this._io.readBitsIntBe(7);
  }

  return BitsUnalignedB32Be;
})();
BitsUnalignedB32Be_.BitsUnalignedB32Be = BitsUnalignedB32Be;
});

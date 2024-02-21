// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsSignedResB32Be || (root.BitsSignedResB32Be = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsSignedResB32Be_, KaitaiStream) {
var BitsSignedResB32Be = (function() {
  function BitsSignedResB32Be(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSignedResB32Be.prototype._read = function() {
    this.a = this._io.readBitsIntBe(32);
  }

  return BitsSignedResB32Be;
})();
BitsSignedResB32Be_.BitsSignedResB32Be = BitsSignedResB32Be;
});

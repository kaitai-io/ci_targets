// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsSignedResB32Le || (root.BitsSignedResB32Le = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsSignedResB32Le_, KaitaiStream) {
var BitsSignedResB32Le = (function() {
  function BitsSignedResB32Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSignedResB32Le.prototype._read = function() {
    this.a = this._io.readBitsIntLe(32);
  }

  return BitsSignedResB32Le;
})();
BitsSignedResB32Le_.BitsSignedResB32Le = BitsSignedResB32Le;
});

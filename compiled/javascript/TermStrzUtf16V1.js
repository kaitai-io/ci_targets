// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStrzUtf16V1 || (root.TermStrzUtf16V1 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStrzUtf16V1_, KaitaiStream) {
var TermStrzUtf16V1 = (function() {
  function TermStrzUtf16V1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStrzUtf16V1.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti([0, 0], false, true, true), "UTF-16LE");
    this.s2 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti([0, 0], false, false, true), "UTF-16LE");
    this.term = this._io.readU2le();
    this.s3 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti([0, 0], true, true, true), "UTF-16LE");
  }

  return TermStrzUtf16V1;
})();
TermStrzUtf16V1_.TermStrzUtf16V1 = TermStrzUtf16V1;
});

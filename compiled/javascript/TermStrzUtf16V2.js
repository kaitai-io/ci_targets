// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStrzUtf16V2 || (root.TermStrzUtf16V2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStrzUtf16V2_, KaitaiStream) {
var TermStrzUtf16V2 = (function() {
  function TermStrzUtf16V2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStrzUtf16V2.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), false, true, true), "UTF-16LE");
    this.s2 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), true, true, true), "UTF-16LE");
    this.s3 = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), false, false, true), "UTF-16LE");
  }

  return TermStrzUtf16V2;
})();
TermStrzUtf16V2_.TermStrzUtf16V2 = TermStrzUtf16V2;
});

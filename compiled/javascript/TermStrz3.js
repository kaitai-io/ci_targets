// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStrz3 || (root.TermStrz3 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStrz3_, KaitaiStream) {
var TermStrz3 = (function() {
  function TermStrz3(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStrz3.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, false, true), "UTF-8");
    this.s2 = KaitaiStream.bytesToStr(this._io.readBytesTerm(64, false, false, true), "UTF-8");
    this.s3 = KaitaiStream.bytesToStr(this._io.readBytesTerm(64, false, true, true), "UTF-8");
  }

  return TermStrz3;
})();
TermStrz3_.TermStrz3 = TermStrz3;
});

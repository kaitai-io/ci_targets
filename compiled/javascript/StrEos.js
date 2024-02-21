// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEos || (root.StrEos = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEos_, KaitaiStream) {
var StrEos = (function() {
  function StrEos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEos.prototype._read = function() {
    this.str = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-8");
  }

  return StrEos;
})();
StrEos_.StrEos = StrEos;
});

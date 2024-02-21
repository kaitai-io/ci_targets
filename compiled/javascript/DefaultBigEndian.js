// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.DefaultBigEndian || (root.DefaultBigEndian = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (DefaultBigEndian_, KaitaiStream) {
var DefaultBigEndian = (function() {
  function DefaultBigEndian(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DefaultBigEndian.prototype._read = function() {
    this.one = this._io.readU4be();
  }

  return DefaultBigEndian;
})();
DefaultBigEndian_.DefaultBigEndian = DefaultBigEndian;
});

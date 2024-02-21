// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Imported2 || (root.Imported2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Imported2_, KaitaiStream) {
var Imported2 = (function() {
  function Imported2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Imported2.prototype._read = function() {
    this.one = this._io.readU1();
  }

  return Imported2;
})();
Imported2_.Imported2 = Imported2;
});

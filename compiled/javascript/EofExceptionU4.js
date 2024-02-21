// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionU4 || (root.EofExceptionU4 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionU4_, KaitaiStream) {
var EofExceptionU4 = (function() {
  function EofExceptionU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionU4.prototype._read = function() {
    this.prebuf = this._io.readBytes(9);
    this.failInt = this._io.readU4le();
  }

  return EofExceptionU4;
})();
EofExceptionU4_.EofExceptionU4 = EofExceptionU4;
});

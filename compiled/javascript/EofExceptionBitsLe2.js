// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionBitsLe2 || (root.EofExceptionBitsLe2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionBitsLe2_, KaitaiStream) {
var EofExceptionBitsLe2 = (function() {
  function EofExceptionBitsLe2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  EofExceptionBitsLe2.prototype._read = function() {
    this._debug.preBits = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.preBits = this._io.readBitsIntLe(8);
    this._debug.preBits.end = this._io.pos;
    this._debug.failBits = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.failBits = this._io.readBitsIntLe(17);
    this._debug.failBits.end = this._io.pos;
  }

  return EofExceptionBitsLe2;
})();
EofExceptionBitsLe2_.EofExceptionBitsLe2 = EofExceptionBitsLe2;
});

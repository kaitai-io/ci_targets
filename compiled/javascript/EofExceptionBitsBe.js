// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionBitsBe || (root.EofExceptionBitsBe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionBitsBe_, KaitaiStream) {
var EofExceptionBitsBe = (function() {
  function EofExceptionBitsBe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  EofExceptionBitsBe.prototype._read = function() {
    this._debug.preBits = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.preBits = this._io.readBitsIntBe(7);
    this._debug.preBits.end = this._io.pos;
    this._debug.failBits = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.failBits = this._io.readBitsIntBe(18);
    this._debug.failBits.end = this._io.pos;
  }

  return EofExceptionBitsBe;
})();
EofExceptionBitsBe_.EofExceptionBitsBe = EofExceptionBitsBe;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsByteAlignedEofLe || (root.BitsByteAlignedEofLe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsByteAlignedEofLe_, KaitaiStream) {
var BitsByteAlignedEofLe = (function() {
  function BitsByteAlignedEofLe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsByteAlignedEofLe.prototype._read = function() {
    this.prebuf = this._io.readBytes(8);
    this.bits = this._io.readBitsIntLe(31);
  }

  return BitsByteAlignedEofLe;
})();
BitsByteAlignedEofLe_.BitsByteAlignedEofLe = BitsByteAlignedEofLe;
});

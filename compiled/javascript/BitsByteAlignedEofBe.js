// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsByteAlignedEofBe || (root.BitsByteAlignedEofBe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsByteAlignedEofBe_, KaitaiStream) {
var BitsByteAlignedEofBe = (function() {
  function BitsByteAlignedEofBe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsByteAlignedEofBe.prototype._read = function() {
    this.prebuf = this._io.readBytes(8);
    this.bits = this._io.readBitsIntBe(31);
  }

  return BitsByteAlignedEofBe;
})();
BitsByteAlignedEofBe_.BitsByteAlignedEofBe = BitsByteAlignedEofBe;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsByteAligned || (root.BitsByteAligned = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsByteAligned_, KaitaiStream) {
var BitsByteAligned = (function() {
  function BitsByteAligned(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsByteAligned.prototype._read = function() {
    this.one = this._io.readBitsIntBe(6);
    this.byte1 = this._io.readU1();
    this.two = this._io.readBitsIntBe(3);
    this.three = this._io.readBitsIntBe(1) != 0;
    this.byte2 = this._io.readU1();
    this.four = this._io.readBitsIntBe(14);
    this.byte3 = this._io.readBytes(1);
    this.fullByte = this._io.readBitsIntBe(8);
    this.byte4 = this._io.readU1();
  }

  return BitsByteAligned;
})();
BitsByteAligned_.BitsByteAligned = BitsByteAligned;
});

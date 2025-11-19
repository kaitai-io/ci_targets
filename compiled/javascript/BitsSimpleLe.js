// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsSimpleLe || (root.BitsSimpleLe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsSimpleLe_, KaitaiStream) {
var BitsSimpleLe = (function() {
  function BitsSimpleLe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSimpleLe.prototype._read = function() {
    this.byte1 = this._io.readBitsIntLe(8);
    this.byte2 = this._io.readBitsIntLe(8);
    this.bitsA = this._io.readBitsIntLe(1) != 0;
    this.bitsB = this._io.readBitsIntLe(3);
    this.bitsC = this._io.readBitsIntLe(4);
    this.largeBits1 = this._io.readBitsIntLe(10);
    this.spacer = this._io.readBitsIntLe(3);
    this.largeBits2 = this._io.readBitsIntLe(11);
    this.normalS2 = this._io.readS2be();
    this.byte8910 = this._io.readBitsIntLe(24);
    this.byte11To14 = this._io.readBitsIntLe(32);
    this.byte15To19 = this._io.readBitsIntLe(40);
    this.byte20To27 = this._io.readBitsIntLe(64);
  }
  Object.defineProperty(BitsSimpleLe.prototype, 'testIfB1', {
    get: function() {
      if (this._m_testIfB1 !== undefined)
        return this._m_testIfB1;
      if (this.bitsA == true) {
        this._m_testIfB1 = 123;
      }
      return this._m_testIfB1;
    }
  });

  return BitsSimpleLe;
})();
BitsSimpleLe_.BitsSimpleLe = BitsSimpleLe;
});

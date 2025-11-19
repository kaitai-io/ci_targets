// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsSimple || (root.BitsSimple = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsSimple_, KaitaiStream) {
var BitsSimple = (function() {
  function BitsSimple(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSimple.prototype._read = function() {
    this.byte1 = this._io.readBitsIntBe(8);
    this.byte2 = this._io.readBitsIntBe(8);
    this.bitsA = this._io.readBitsIntBe(1) != 0;
    this.bitsB = this._io.readBitsIntBe(3);
    this.bitsC = this._io.readBitsIntBe(4);
    this.largeBits1 = this._io.readBitsIntBe(10);
    this.spacer = this._io.readBitsIntBe(3);
    this.largeBits2 = this._io.readBitsIntBe(11);
    this.normalS2 = this._io.readS2be();
    this.byte8910 = this._io.readBitsIntBe(24);
    this.byte11To14 = this._io.readBitsIntBe(32);
    this.byte15To19 = this._io.readBitsIntBe(40);
    this.byte20To27 = this._io.readBitsIntBe(64);
  }
  Object.defineProperty(BitsSimple.prototype, 'testIfB1', {
    get: function() {
      if (this._m_testIfB1 !== undefined)
        return this._m_testIfB1;
      if (this.bitsA == false) {
        this._m_testIfB1 = 123;
      }
      return this._m_testIfB1;
    }
  });

  return BitsSimple;
})();
BitsSimple_.BitsSimple = BitsSimple;
});

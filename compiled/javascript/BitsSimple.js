// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsSimple = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var BitsSimple = (function() {
  function BitsSimple(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSimple.prototype._read = function() {
    this.byte1 = this._io.readBitsInt(8);
    this.byte2 = this._io.readBitsInt(8);
    this.bitsA = this._io.readBitsInt(1) != 0;
    this.bitsB = this._io.readBitsInt(3);
    this.bitsC = this._io.readBitsInt(4);
    this.largeBits1 = this._io.readBitsInt(10);
    this.spacer = this._io.readBitsInt(3);
    this.largeBits2 = this._io.readBitsInt(11);
    this._io.alignToByte();
    this.normalS2 = this._io.readS2be();
    this.byte8910 = this._io.readBitsInt(24);
    this.byte11To14 = this._io.readBitsInt(32);
    this.byte15To19 = this._io.readBitsInt(40);
    this.byte20To27 = this._io.readBitsInt(64);
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
return BitsSimple;
}));

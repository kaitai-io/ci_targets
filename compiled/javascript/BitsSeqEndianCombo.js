// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsSeqEndianCombo = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var BitsSeqEndianCombo = (function() {
  function BitsSeqEndianCombo(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSeqEndianCombo.prototype._read = function() {
    this.be1 = this._io.readBitsIntBe(6);
    this.be2 = this._io.readBitsIntBe(10);
    this.le3 = this._io.readBitsIntLe(8);
    this.be4 = this._io.readBitsIntBe(8);
    this.le5 = this._io.readBitsIntLe(5);
    this.le6 = this._io.readBitsIntLe(6);
    this.le7 = this._io.readBitsIntLe(5);
    this.be8 = this._io.readBitsIntBe(1) != 0;
  }

  return BitsSeqEndianCombo;
})();
return BitsSeqEndianCombo;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsSignedB32Le = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var BitsSignedB32Le = (function() {
  function BitsSignedB32Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSignedB32Le.prototype._read = function() {
    this.aNum = this._io.readBitsIntLe(31);
    this.aBit = this._io.readBitsIntLe(1) != 0;
    this.bNum = this._io.readBitsIntLe(31);
    this.bBit = this._io.readBitsIntLe(1) != 0;
  }

  return BitsSignedB32Le;
})();
return BitsSignedB32Le;
}));

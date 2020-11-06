// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BitsSignedB64Le = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var BitsSignedB64Le = (function() {
  function BitsSignedB64Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSignedB64Le.prototype._read = function() {
    this.aNum = this._io.readBitsIntLe(63);
    this.aBit = this._io.readBitsIntLe(1) != 0;
    this.bNum = this._io.readBitsIntLe(63);
    this.bBit = this._io.readBitsIntLe(1) != 0;
  }

  return BitsSignedB64Le;
})();
return BitsSignedB64Le;
}));

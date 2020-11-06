// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IndexSizes = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var IndexSizes = (function() {
  function IndexSizes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IndexSizes.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.sizes = new Array(this.qty);
    for (var i = 0; i < this.qty; i++) {
      this.sizes[i] = this._io.readU4le();
    }
    this.bufs = new Array(this.qty);
    for (var i = 0; i < this.qty; i++) {
      this.bufs[i] = KaitaiStream.bytesToStr(this._io.readBytes(this.sizes[i]), "ASCII");
    }
  }

  return IndexSizes;
})();
return IndexSizes;
}));

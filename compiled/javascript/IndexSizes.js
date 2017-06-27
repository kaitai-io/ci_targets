// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

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

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('IndexSizes', [], function() {
    return IndexSizes;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = IndexSizes;
}

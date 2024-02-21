// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.IndexToParamEos || (root.IndexToParamEos = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (IndexToParamEos_, KaitaiStream) {
var IndexToParamEos = (function() {
  function IndexToParamEos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IndexToParamEos.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.sizes = [];
    for (var i = 0; i < this.qty; i++) {
      this.sizes.push(this._io.readU4le());
    }
    this.blocks = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.blocks.push(new Block(this._io, this, this._root, i));
      i++;
    }
  }

  var Block = IndexToParamEos.Block = (function() {
    function Block(_io, _parent, _root, idx) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.idx = idx;

      this._read();
    }
    Block.prototype._read = function() {
      this.buf = KaitaiStream.bytesToStr(this._io.readBytes(this._root.sizes[this.idx]), "ASCII");
    }

    return Block;
  })();

  return IndexToParamEos;
})();
IndexToParamEos_.IndexToParamEos = IndexToParamEos;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IndexToParamUntil = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var IndexToParamUntil = (function() {
  function IndexToParamUntil(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IndexToParamUntil.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.sizes = [];
    for (var i = 0; i < this.qty; i++) {
      this.sizes.push(this._io.readU4le());
    }
    this.blocks = [];
    var i = 0;
    do {
      var _ = new Block(this._io, this, this._root, i);
      this.blocks.push(_);
      i++;
    } while (!(this._io.isEof()));
  }

  var Block = IndexToParamUntil.Block = (function() {
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

  return IndexToParamUntil;
})();
return IndexToParamUntil;
}));

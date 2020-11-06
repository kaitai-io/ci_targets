// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatNStruct = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var RepeatNStruct = (function() {
  function RepeatNStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNStruct.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.chunks = new Array(this.qty);
    for (var i = 0; i < this.qty; i++) {
      this.chunks[i] = new Chunk(this._io, this, this._root);
    }
  }

  var Chunk = RepeatNStruct.Chunk = (function() {
    function Chunk(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Chunk.prototype._read = function() {
      this.offset = this._io.readU4le();
      this.len = this._io.readU4le();
    }

    return Chunk;
  })();

  return RepeatNStruct;
})();
return RepeatNStruct;
}));

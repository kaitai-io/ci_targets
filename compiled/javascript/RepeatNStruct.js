// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatNStruct || (root.RepeatNStruct = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatNStruct_, KaitaiStream) {
var RepeatNStruct = (function() {
  function RepeatNStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNStruct.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.chunks = [];
    for (var i = 0; i < this.qty; i++) {
      this.chunks.push(new Chunk(this._io, this, this._root));
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
RepeatNStruct_.RepeatNStruct = RepeatNStruct;
});

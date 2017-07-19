// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var RepeatEosStruct = (function() {
  function RepeatEosStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosStruct.prototype._read = function() {
    this.chunks = [];
    while (!this._io.isEof()) {
      this.chunks.push(new Chunk(this._io, this, this._root));
    }
  }

  var Chunk = RepeatEosStruct.Chunk = (function() {
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

  return RepeatEosStruct;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('RepeatEosStruct', [], function() {
    return RepeatEosStruct;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = RepeatEosStruct;
}

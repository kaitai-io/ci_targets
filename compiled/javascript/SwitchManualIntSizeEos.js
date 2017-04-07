// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var SwitchManualIntSizeEos = (function() {
  function SwitchManualIntSizeEos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.chunks = [];
    while (!this._io.isEof()) {
      this.chunks.push(new Chunk(this._io, this, this._root));
    }
  }

  var Chunk = SwitchManualIntSizeEos.Chunk = (function() {
    function Chunk(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.code = this._io.readU1();
      this.size = this._io.readU4le();
      this._raw_body = this._io.readBytes(this.size);
      var _io__raw_body = new KaitaiStream(this._raw_body);
      this.body = new ChunkBody(_io__raw_body, this, this._root);
    }

    return Chunk;
  })();

  var ChunkBody = SwitchManualIntSizeEos.ChunkBody = (function() {
    function ChunkBody(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      switch (this._parent.code) {
      case 17:
        this._raw_body = this._io.readBytesFull();
        var _io__raw_body = new KaitaiStream(this._raw_body);
        this.body = new ChunkMeta(_io__raw_body, this, this._root);
        break;
      case 34:
        this._raw_body = this._io.readBytesFull();
        var _io__raw_body = new KaitaiStream(this._raw_body);
        this.body = new ChunkDir(_io__raw_body, this, this._root);
        break;
      default:
        this.body = this._io.readBytesFull();
        break;
      }
    }

    var ChunkMeta = ChunkBody.ChunkMeta = (function() {
      function ChunkMeta(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.title = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
        this.author = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
      }

      return ChunkMeta;
    })();

    var ChunkDir = ChunkBody.ChunkDir = (function() {
      function ChunkDir(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.entries = [];
        while (!this._io.isEof()) {
          this.entries.push(KaitaiStream.bytesToStr(this._io.readBytes(4), "UTF-8"));
        }
      }

      return ChunkDir;
    })();

    return ChunkBody;
  })();

  return SwitchManualIntSizeEos;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('SwitchManualIntSizeEos', [], function() {
    return SwitchManualIntSizeEos;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = SwitchManualIntSizeEos;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.SwitchManualIntSizeElse = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var SwitchManualIntSizeElse = (function() {
  function SwitchManualIntSizeElse(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchManualIntSizeElse.prototype._read = function() {
    this.chunks = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.chunks.push(new Chunk(this._io, this, this._root));
      i++;
    }
  }

  var Chunk = SwitchManualIntSizeElse.Chunk = (function() {
    function Chunk(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Chunk.prototype._read = function() {
      this.code = this._io.readU1();
      this.size = this._io.readU4le();
      switch (this.code) {
      case 17:
        this._raw_body = this._io.readBytes(this.size);
        var _io__raw_body = new KaitaiStream(this._raw_body);
        this.body = new ChunkMeta(_io__raw_body, this, this._root);
        break;
      case 34:
        this._raw_body = this._io.readBytes(this.size);
        var _io__raw_body = new KaitaiStream(this._raw_body);
        this.body = new ChunkDir(_io__raw_body, this, this._root);
        break;
      default:
        this._raw_body = this._io.readBytes(this.size);
        var _io__raw_body = new KaitaiStream(this._raw_body);
        this.body = new Dummy(_io__raw_body, this, this._root);
        break;
      }
    }

    var ChunkMeta = Chunk.ChunkMeta = (function() {
      function ChunkMeta(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      ChunkMeta.prototype._read = function() {
        this.title = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
        this.author = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
      }

      return ChunkMeta;
    })();

    var ChunkDir = Chunk.ChunkDir = (function() {
      function ChunkDir(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      ChunkDir.prototype._read = function() {
        this.entries = [];
        var i = 0;
        while (!this._io.isEof()) {
          this.entries.push(KaitaiStream.bytesToStr(this._io.readBytes(4), "UTF-8"));
          i++;
        }
      }

      return ChunkDir;
    })();

    var Dummy = Chunk.Dummy = (function() {
      function Dummy(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Dummy.prototype._read = function() {
        this.rest = this._io.readBytesFull();
      }

      return Dummy;
    })();

    return Chunk;
  })();

  return SwitchManualIntSizeElse;
})();
return SwitchManualIntSizeElse;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchManualIntSizeEos || (root.SwitchManualIntSizeEos = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchManualIntSizeEos_, KaitaiStream) {
var SwitchManualIntSizeEos = (function() {
  function SwitchManualIntSizeEos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchManualIntSizeEos.prototype._read = function() {
    this.chunks = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.chunks.push(new Chunk(this._io, this, this._root));
      i++;
    }
  }

  var Chunk = SwitchManualIntSizeEos.Chunk = (function() {
    function Chunk(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Chunk.prototype._read = function() {
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

      this._read();
    }
    ChunkBody.prototype._read = function() {
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

    var ChunkDir = ChunkBody.ChunkDir = (function() {
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

    var ChunkMeta = ChunkBody.ChunkMeta = (function() {
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

    return ChunkBody;
  })();

  return SwitchManualIntSizeEos;
})();
SwitchManualIntSizeEos_.SwitchManualIntSizeEos = SwitchManualIntSizeEos;
});

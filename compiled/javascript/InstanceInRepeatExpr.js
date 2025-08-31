// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceInRepeatExpr || (root.InstanceInRepeatExpr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceInRepeatExpr_, KaitaiStream) {
var InstanceInRepeatExpr = (function() {
  function InstanceInRepeatExpr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceInRepeatExpr.prototype._read = function() {
    this.chunks = [];
    for (var i = 0; i < this.numChunks; i++) {
      this.chunks.push(new Chunk(this._io, this, this._root));
    }
  }

  var Chunk = InstanceInRepeatExpr.Chunk = (function() {
    function Chunk(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Chunk.prototype._read = function() {
      this.offset = this._io.readU4le();
      this.len = this._io.readU4le();
    }

    return Chunk;
  })();
  Object.defineProperty(InstanceInRepeatExpr.prototype, 'numChunks', {
    get: function() {
      if (this._m_numChunks !== undefined)
        return this._m_numChunks;
      var _pos = this._io.pos;
      this._io.seek(this._io.pos + 16);
      this._m_numChunks = this._io.readU4le();
      this._io.seek(_pos);
      return this._m_numChunks;
    }
  });

  return InstanceInRepeatExpr;
})();
InstanceInRepeatExpr_.InstanceInRepeatExpr = InstanceInRepeatExpr;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var PositionAbs = (function() {
  function PositionAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.indexOffset = this._io.readU4le();
  }

  var IndexObj = PositionAbs.IndexObj = (function() {
    function IndexObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.entry = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }

    return IndexObj;
  })();
  Object.defineProperty(PositionAbs.prototype, 'index', {
    get: function() {
      if (this._m_index !== undefined)
        return this._m_index;
      var _pos = this._io.pos;
      this._io.seek(this.indexOffset);
      this._m_index = new IndexObj(this._io, this, this._root);
      this._io.seek(_pos);
      return this._m_index;
    }
  });

  return PositionAbs;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('PositionAbs', [], function() {
    return PositionAbs;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = PositionAbs;
}

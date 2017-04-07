// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var InstanceStd = (function() {
  function InstanceStd(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

  }
  Object.defineProperty(InstanceStd.prototype, 'header', {
    get: function() {
      if (this._m_header !== undefined)
        return this._m_header;
      var _pos = this._io.pos;
      this._io.seek(2);
      this._m_header = KaitaiStream.bytesToStr(this._io.readBytes(5), "ASCII");
      this._io.seek(_pos);
      return this._m_header;
    }
  });

  return InstanceStd;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('InstanceStd', [], function() {
    return InstanceStd;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = InstanceStd;
}

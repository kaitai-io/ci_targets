// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var DefaultBigEndian = (function() {
  function DefaultBigEndian(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.one = this._io.readU4be();
  }

  return DefaultBigEndian;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('DefaultBigEndian', [], function() {
    return DefaultBigEndian;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = DefaultBigEndian;
}

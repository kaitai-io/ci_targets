// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var FixedContents = (function() {
  function FixedContents(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.normal = this._io.ensureFixedContents([80, 65, 67, 75, 45, 49]);
    this.highBit8 = this._io.ensureFixedContents([255, 255]);
  }

  return FixedContents;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('FixedContents', [], function() {
    return FixedContents;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = FixedContents;
}

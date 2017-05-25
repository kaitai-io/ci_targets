// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var StrEos = (function() {
  function StrEos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEos.prototype._read = function() {
    this.str = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-8");
  }

  return StrEos;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('StrEos', [], function() {
    return StrEos;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = StrEos;
}

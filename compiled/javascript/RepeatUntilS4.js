// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var RepeatUntilS4 = (function() {
  function RepeatUntilS4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilS4.prototype._read = function() {
    this.entries = []
    do {
      var _ = this._io.readS4le();
      this.entries.push(_);
    } while (!(_ == -1));
    this.afterall = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "ASCII");
  }

  return RepeatUntilS4;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('RepeatUntilS4', [], function() {
    return RepeatUntilS4;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = RepeatUntilS4;
}

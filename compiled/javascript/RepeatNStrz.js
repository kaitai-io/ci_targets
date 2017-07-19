// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var RepeatNStrz = (function() {
  function RepeatNStrz(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNStrz.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.lines = new Array(this.qty);
    for (var i = 0; i < this.qty; i++) {
      this.lines[i] = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }
  }

  return RepeatNStrz;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('RepeatNStrz', [], function() {
    return RepeatNStrz;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = RepeatNStrz;
}

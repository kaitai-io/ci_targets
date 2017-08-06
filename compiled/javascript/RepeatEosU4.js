// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var RepeatEosU4 = (function() {
  function RepeatEosU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosU4.prototype._read = function() {
    this.numbers = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.numbers.push(this._io.readU4le());
      i++;
    }
  }

  return RepeatEosU4;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('RepeatEosU4', [], function() {
    return RepeatEosU4;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = RepeatEosU4;
}

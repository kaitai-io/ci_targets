// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var BitsByteAligned = (function() {
  function BitsByteAligned(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsByteAligned.prototype._read = function() {
    this.one = this._io.readBitsInt(6);
    this._io.alignToByte();
    this.byte1 = this._io.readU1();
    this.two = this._io.readBitsInt(3);
    this.three = this._io.readBitsInt(1) != 0;
    this._io.alignToByte();
    this.byte2 = this._io.readU1();
    this.four = this._io.readBitsInt(14);
    this._io.alignToByte();
    this.byte3 = this._io.readBytes(1);
    this.fullByte = this._io.readBitsInt(8);
    this._io.alignToByte();
    this.byte4 = this._io.readU1();
  }

  return BitsByteAligned;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('BitsByteAligned', [], function() {
    return BitsByteAligned;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = BitsByteAligned;
}

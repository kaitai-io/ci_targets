// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var Enum0 = (function() {
  Enum0.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function Enum0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Enum0.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }

  return Enum0;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Enum0', [], function() {
    return Enum0;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Enum0;
}

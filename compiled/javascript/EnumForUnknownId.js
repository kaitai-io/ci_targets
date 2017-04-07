// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var EnumForUnknownId = (function() {
  EnumForUnknownId.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function EnumForUnknownId(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.one = this._io.readU1();
  }

  return EnumForUnknownId;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EnumForUnknownId', [], function() {
    return EnumForUnknownId;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EnumForUnknownId;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var HelloWorld = (function() {
  function HelloWorld(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.one = this._io.readU1();
  }

  return HelloWorld;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('HelloWorld', [], function() {
    return HelloWorld;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = HelloWorld;
}

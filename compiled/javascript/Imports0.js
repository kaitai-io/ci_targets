// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var HelloWorld = require('./HelloWorld.js');

var Imports0 = (function() {
  function Imports0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Imports0.prototype._read = function() {
    this.two = this._io.readU1();
    this.hw = new HelloWorld(this._io, this, null);
  }
  Object.defineProperty(Imports0.prototype, 'hwOne', {
    get: function() {
      if (this._m_hwOne !== undefined)
        return this._m_hwOne;
      this._m_hwOne = this.hw.one;
      return this._m_hwOne;
    }
  });

  return Imports0;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Imports0', [], function() {
    return Imports0;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Imports0;
}

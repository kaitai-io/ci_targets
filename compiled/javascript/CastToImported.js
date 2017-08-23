// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var HelloWorld = require('./HelloWorld.js');

var CastToImported = (function() {
  function CastToImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CastToImported.prototype._read = function() {
    this.one = new HelloWorld(this._io, null, null);
  }
  Object.defineProperty(CastToImported.prototype, 'oneCasted', {
    get: function() {
      if (this._m_oneCasted !== undefined)
        return this._m_oneCasted;
      this._m_oneCasted = this.one;
      return this._m_oneCasted;
    }
  });

  return CastToImported;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('CastToImported', [], function() {
    return CastToImported;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = CastToImported;
}

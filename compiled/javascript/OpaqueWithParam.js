// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var ParamsDef = require('./ParamsDef.js');

var OpaqueWithParam = (function() {
  function OpaqueWithParam(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueWithParam.prototype._read = function() {
    this.one = new ParamsDef(this._io, this, null, 5, true);
  }

  return OpaqueWithParam;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('OpaqueWithParam', [], function() {
    return OpaqueWithParam;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = OpaqueWithParam;
}

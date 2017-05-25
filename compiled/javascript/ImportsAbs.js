// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var VlqBase128Le = require('./VlqBase128Le.js');

var ImportsAbs = (function() {
  function ImportsAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbs.prototype._read = function() {
    this.len = new VlqBase128Le(this._io);
    this.body = this._io.readBytes(this.len.value);
  }

  return ImportsAbs;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ImportsAbs', [], function() {
    return ImportsAbs;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ImportsAbs;
}

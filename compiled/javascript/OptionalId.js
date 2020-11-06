// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.OptionalId = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var OptionalId = (function() {
  function OptionalId(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OptionalId.prototype._read = function() {
    this._unnamed0 = this._io.readU1();
    this._unnamed1 = this._io.readU1();
    this._unnamed2 = this._io.readBytes(5);
  }

  return OptionalId;
})();
return OptionalId;
}));

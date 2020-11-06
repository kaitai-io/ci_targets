// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.TermBytes = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var TermBytes = (function() {
  function TermBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermBytes.prototype._read = function() {
    this.s1 = this._io.readBytesTerm(124, false, true, true);
    this.s2 = this._io.readBytesTerm(124, false, false, true);
    this.s3 = this._io.readBytesTerm(64, true, true, true);
  }

  return TermBytes;
})();
return TermBytes;
}));

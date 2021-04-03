// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.TermU1Val = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var TermU1Val = (function() {
  function TermU1Val(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermU1Val.prototype._read = function() {
    this.foo = this._io.readBytesTerm(227, false, false, true);
    this.bar = KaitaiStream.bytesToStr(this._io.readBytesTerm(171, true, true, true), "UTF-8");
  }

  return TermU1Val;
})();
return TermU1Val;
}));

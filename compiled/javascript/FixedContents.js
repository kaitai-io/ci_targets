// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.FixedContents = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var FixedContents = (function() {
  function FixedContents(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  FixedContents.prototype._read = function() {
    this.normal = this._io.ensureFixedContents([80, 65, 67, 75, 45, 49]);
    this.highBit8 = this._io.ensureFixedContents([255, 255]);
  }

  return FixedContents;
})();
return FixedContents;
}));

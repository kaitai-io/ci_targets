// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './TermStrz'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./TermStrz'));
  } else {
    root.OpaqueExternalType = factory(root.KaitaiStream, root.TermStrz);
  }
}(this, function (KaitaiStream, TermStrz) {
var OpaqueExternalType = (function() {
  function OpaqueExternalType(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueExternalType.prototype._read = function() {
    this.one = new TermStrz(this._io, this, null);
  }

  return OpaqueExternalType;
})();
return OpaqueExternalType;
}));

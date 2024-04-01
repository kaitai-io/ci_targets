// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './TermStrz'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./TermStrz'));
  } else {
    factory(root.OpaqueExternalType || (root.OpaqueExternalType = {}), root.KaitaiStream, root.TermStrz || (root.TermStrz = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (OpaqueExternalType_, KaitaiStream, TermStrz_) {
var OpaqueExternalType = (function() {
  function OpaqueExternalType(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueExternalType.prototype._read = function() {
    this.one = new TermStrz_.TermStrz(this._io, null, null);
  }

  return OpaqueExternalType;
})();
OpaqueExternalType_.OpaqueExternalType = OpaqueExternalType;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumImportSeq || (root.EnumImportSeq = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumImportSeq_, KaitaiStream) {
var EnumImportSeq = (function() {
  function EnumImportSeq(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumImportSeq.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }

  return EnumImportSeq;
})();
EnumImportSeq_.EnumImportSeq = EnumImportSeq;
});

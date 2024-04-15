// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './EnumDeep', './Enum0'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./EnumDeep'), require('./Enum0'));
  } else {
    factory(root.EnumImportSeq || (root.EnumImportSeq = {}), root.KaitaiStream, root.EnumDeep || (root.EnumDeep = {}), root.Enum0 || (root.Enum0 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (EnumImportSeq_, KaitaiStream, EnumDeep_, Enum0_) {
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

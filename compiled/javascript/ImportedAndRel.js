// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ImportedRoot'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ImportedRoot'));
  } else {
    factory(root.ImportedAndRel || (root.ImportedAndRel = {}), root.KaitaiStream, root.ImportedRoot || (root.ImportedRoot = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportedAndRel_, KaitaiStream, ImportedRoot_) {
var ImportedAndRel = (function() {
  function ImportedAndRel(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportedAndRel.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedRoot_.ImportedRoot(this._io, null, null);
  }

  return ImportedAndRel;
})();
ImportedAndRel_.ImportedAndRel = ImportedAndRel;
});

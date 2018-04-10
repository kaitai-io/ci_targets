// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ImportedRoot'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ImportedRoot'));
  } else {
    root.ImportedAndRel = factory(root.KaitaiStream, root.ImportedRoot);
  }
}(this, function (KaitaiStream, ImportedRoot) {
var ImportedAndRel = (function() {
  function ImportedAndRel(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportedAndRel.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedRoot(this._io, this, null);
  }

  return ImportedAndRel;
})();
return ImportedAndRel;
}));

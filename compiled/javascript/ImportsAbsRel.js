// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ImportedAndRel'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ImportedAndRel'));
  } else {
    root.ImportsAbsRel = factory(root.KaitaiStream, root.ImportedAndRel);
  }
}(this, function (KaitaiStream, ImportedAndRel) {
var ImportsAbsRel = (function() {
  function ImportsAbsRel(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbsRel.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedAndRel(this._io, this, null);
  }

  return ImportsAbsRel;
})();
return ImportsAbsRel;
}));

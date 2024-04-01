// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ImportedAndRel'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ImportedAndRel'));
  } else {
    factory(root.ImportsAbsRel || (root.ImportsAbsRel = {}), root.KaitaiStream, root.ImportedAndRel || (root.ImportedAndRel = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsAbsRel_, KaitaiStream, ImportedAndRel_) {
var ImportsAbsRel = (function() {
  function ImportsAbsRel(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbsRel.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedAndRel_.ImportedAndRel(this._io, null, null);
  }

  return ImportsAbsRel;
})();
ImportsAbsRel_.ImportsAbsRel = ImportsAbsRel;
});

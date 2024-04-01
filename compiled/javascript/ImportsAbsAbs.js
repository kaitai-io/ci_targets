// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ImportedAndAbs'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ImportedAndAbs'));
  } else {
    factory(root.ImportsAbsAbs || (root.ImportsAbsAbs = {}), root.KaitaiStream, root.ImportedAndAbs || (root.ImportedAndAbs = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsAbsAbs_, KaitaiStream, ImportedAndAbs_) {
var ImportsAbsAbs = (function() {
  function ImportsAbsAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbsAbs.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedAndAbs_.ImportedAndAbs(this._io, null, null);
  }

  return ImportsAbsAbs;
})();
ImportsAbsAbs_.ImportsAbsAbs = ImportsAbsAbs;
});

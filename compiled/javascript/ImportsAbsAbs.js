// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ImportedAndAbs'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ImportedAndAbs'));
  } else {
    root.ImportsAbsAbs = factory(root.KaitaiStream, root.ImportedAndAbs);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, ImportedAndAbs) {
var ImportsAbsAbs = (function() {
  function ImportsAbsAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbsAbs.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new ImportedAndAbs(this._io, this, null);
  }

  return ImportsAbsAbs;
})();
return ImportsAbsAbs;
}));

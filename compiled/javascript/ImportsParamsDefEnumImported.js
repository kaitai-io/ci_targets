// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './EnumImportSeq', './ParamsDefEnumImported'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./EnumImportSeq'), require('./ParamsDefEnumImported'));
  } else {
    factory(root.ImportsParamsDefEnumImported || (root.ImportsParamsDefEnumImported = {}), root.KaitaiStream, root.EnumImportSeq || (root.EnumImportSeq = {}), root.ParamsDefEnumImported || (root.ParamsDefEnumImported = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsParamsDefEnumImported_, KaitaiStream, EnumImportSeq_, ParamsDefEnumImported_) {
var ImportsParamsDefEnumImported = (function() {
  function ImportsParamsDefEnumImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsParamsDefEnumImported.prototype._read = function() {
    this.one = new EnumImportSeq_.EnumImportSeq(this._io, null, null);
    this.two = new ParamsDefEnumImported_.ParamsDefEnumImported(this._io, null, null, this.one.pet1, this.one.pet2);
  }

  return ImportsParamsDefEnumImported;
})();
ImportsParamsDefEnumImported_.ImportsParamsDefEnumImported = ImportsParamsDefEnumImported;
});

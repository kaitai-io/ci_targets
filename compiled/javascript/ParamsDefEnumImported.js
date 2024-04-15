// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './EnumDeep', './Enum0'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./EnumDeep'), require('./Enum0'));
  } else {
    factory(root.ParamsDefEnumImported || (root.ParamsDefEnumImported = {}), root.KaitaiStream, root.EnumDeep || (root.EnumDeep = {}), root.Enum0 || (root.Enum0 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsDefEnumImported_, KaitaiStream, EnumDeep_, Enum0_) {
var ParamsDefEnumImported = (function() {
  function ParamsDefEnumImported(_io, _parent, _root, pet1Param, pet2Param) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.pet1Param = pet1Param;
    this.pet2Param = pet2Param;

    this._read();
  }
  ParamsDefEnumImported.prototype._read = function() {
  }

  return ParamsDefEnumImported;
})();
ParamsDefEnumImported_.ParamsDefEnumImported = ParamsDefEnumImported;
});

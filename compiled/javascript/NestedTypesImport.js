// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './NestedTypes3'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./NestedTypes3'));
  } else {
    factory(root.NestedTypesImport || (root.NestedTypesImport = {}), root.KaitaiStream, root.NestedTypes3 || (root.NestedTypes3 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (NestedTypesImport_, KaitaiStream, NestedTypes3_) {
var NestedTypesImport = (function() {
  function NestedTypesImport(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedTypesImport.prototype._read = function() {
    this.aCc = new NestedTypes3_.NestedTypes3.SubtypeA.SubtypeCc(this._io, null, null);
    this.aCD = new NestedTypes3_.NestedTypes3.SubtypeA.SubtypeC.SubtypeD(this._io, null, null);
    this.b = new NestedTypes3_.NestedTypes3.SubtypeB(this._io, null, null);
  }

  return NestedTypesImport;
})();
NestedTypesImport_.NestedTypesImport = NestedTypesImport;
});

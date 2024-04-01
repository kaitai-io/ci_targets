// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ParamsDef'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ParamsDef'));
  } else {
    factory(root.OpaqueWithParam || (root.OpaqueWithParam = {}), root.KaitaiStream, root.ParamsDef || (root.ParamsDef = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (OpaqueWithParam_, KaitaiStream, ParamsDef_) {
var OpaqueWithParam = (function() {
  function OpaqueWithParam(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueWithParam.prototype._read = function() {
    this.one = new ParamsDef_.ParamsDef(this._io, null, null, 5, true);
  }

  return OpaqueWithParam;
})();
OpaqueWithParam_.OpaqueWithParam = OpaqueWithParam;
});

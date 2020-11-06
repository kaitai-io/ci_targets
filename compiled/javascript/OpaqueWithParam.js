// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ParamsDef'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ParamsDef'));
  } else {
    root.OpaqueWithParam = factory(root.KaitaiStream, root.ParamsDef);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, ParamsDef) {
var OpaqueWithParam = (function() {
  function OpaqueWithParam(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueWithParam.prototype._read = function() {
    this.one = new ParamsDef(this._io, this, null, 5, true);
  }

  return OpaqueWithParam;
})();
return OpaqueWithParam;
}));

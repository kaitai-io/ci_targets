// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    factory(root.ParamsDefUsertypeImported || (root.ParamsDefUsertypeImported = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsDefUsertypeImported_, KaitaiStream, HelloWorld_) {
var ParamsDefUsertypeImported = (function() {
  function ParamsDefUsertypeImported(_io, _parent, _root, hwParam) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.hwParam = hwParam;

    this._read();
  }
  ParamsDefUsertypeImported.prototype._read = function() {
  }
  Object.defineProperty(ParamsDefUsertypeImported.prototype, 'hwOne', {
    get: function() {
      if (this._m_hwOne !== undefined)
        return this._m_hwOne;
      this._m_hwOne = this.hwParam.one;
      return this._m_hwOne;
    }
  });

  return ParamsDefUsertypeImported;
})();
ParamsDefUsertypeImported_.ParamsDefUsertypeImported = ParamsDefUsertypeImported;
});

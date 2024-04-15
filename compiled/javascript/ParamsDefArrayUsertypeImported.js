// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    factory(root.ParamsDefArrayUsertypeImported || (root.ParamsDefArrayUsertypeImported = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsDefArrayUsertypeImported_, KaitaiStream, HelloWorld_) {
var ParamsDefArrayUsertypeImported = (function() {
  function ParamsDefArrayUsertypeImported(_io, _parent, _root, hwsParam) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.hwsParam = hwsParam;

    this._read();
  }
  ParamsDefArrayUsertypeImported.prototype._read = function() {
  }
  Object.defineProperty(ParamsDefArrayUsertypeImported.prototype, 'hw0One', {
    get: function() {
      if (this._m_hw0One !== undefined)
        return this._m_hw0One;
      this._m_hw0One = this.hwsParam[0].one;
      return this._m_hw0One;
    }
  });
  Object.defineProperty(ParamsDefArrayUsertypeImported.prototype, 'hw1One', {
    get: function() {
      if (this._m_hw1One !== undefined)
        return this._m_hw1One;
      this._m_hw1One = this.hwsParam[1].one;
      return this._m_hw1One;
    }
  });

  return ParamsDefArrayUsertypeImported;
})();
ParamsDefArrayUsertypeImported_.ParamsDefArrayUsertypeImported = ParamsDefArrayUsertypeImported;
});

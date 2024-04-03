// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.CastToImported || (root.CastToImported = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (CastToImported_, KaitaiStream) {
var CastToImported = (function() {
  function CastToImported(_io, _parent, _root, hwParam) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.hwParam = hwParam;

    this._read();
  }
  CastToImported.prototype._read = function() {
  }
  Object.defineProperty(CastToImported.prototype, 'hwOne', {
    get: function() {
      if (this._m_hwOne !== undefined)
        return this._m_hwOne;
      this._m_hwOne = this.hwParam.one;
      return this._m_hwOne;
    }
  });

  return CastToImported;
})();
CastToImported_.CastToImported = CastToImported;
});

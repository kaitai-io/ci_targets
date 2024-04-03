// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.CastToImported2 || (root.CastToImported2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (CastToImported2_, KaitaiStream) {
var CastToImported2 = (function() {
  function CastToImported2(_io, _parent, _root, hwParam) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.hwParam = hwParam;

    this._read();
  }
  CastToImported2.prototype._read = function() {
  }
  Object.defineProperty(CastToImported2.prototype, 'hw', {
    get: function() {
      if (this._m_hw !== undefined)
        return this._m_hw;
      this._m_hw = this.hwParam;
      return this._m_hw;
    }
  });

  return CastToImported2;
})();
CastToImported2_.CastToImported2 = CastToImported2;
});

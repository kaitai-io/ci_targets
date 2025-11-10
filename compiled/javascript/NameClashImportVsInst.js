// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './Integers'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./Integers'));
  } else {
    factory(root.NameClashImportVsInst || (root.NameClashImportVsInst = {}), root.KaitaiStream, root.Integers || (root.Integers = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (NameClashImportVsInst_, KaitaiStream, Integers_) {
var NameClashImportVsInst = (function() {
  function NameClashImportVsInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NameClashImportVsInst.prototype._read = function() {
  }
  Object.defineProperty(NameClashImportVsInst.prototype, 'integers', {
    get: function() {
      if (this._m_integers !== undefined)
        return this._m_integers;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_integers = new Integers_.Integers(this._io, null, null);
      this._io.seek(_pos);
      return this._m_integers;
    }
  });
  Object.defineProperty(NameClashImportVsInst.prototype, 'std', {
    get: function() {
      if (this._m_std !== undefined)
        return this._m_std;
      this._m_std = 1 + 2;
      return this._m_std;
    }
  });

  return NameClashImportVsInst;
})();
NameClashImportVsInst_.NameClashImportVsInst = NameClashImportVsInst;
});

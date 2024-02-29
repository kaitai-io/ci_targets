// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIfIntOps || (root.ExprIfIntOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIfIntOps_, KaitaiStream) {
var ExprIfIntOps = (function() {
  function ExprIfIntOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIfIntOps.prototype._read = function() {
    this.skip = this._io.readBytes(2);
    if (true) {
      this.it = this._io.readS2le();
    }
    if (true) {
      this.boxed = this._io.readS2le();
    }
  }
  Object.defineProperty(ExprIfIntOps.prototype, 'isEqBoxed', {
    get: function() {
      if (this._m_isEqBoxed !== undefined)
        return this._m_isEqBoxed;
      this._m_isEqBoxed = this.it == this.boxed;
      return this._m_isEqBoxed;
    }
  });
  Object.defineProperty(ExprIfIntOps.prototype, 'isEqPrim', {
    get: function() {
      if (this._m_isEqPrim !== undefined)
        return this._m_isEqPrim;
      this._m_isEqPrim = this.it == 16705;
      return this._m_isEqPrim;
    }
  });

  return ExprIfIntOps;
})();
ExprIfIntOps_.ExprIfIntOps = ExprIfIntOps;
});

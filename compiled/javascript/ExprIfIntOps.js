// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ExprIfIntOps = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
  Object.defineProperty(ExprIfIntOps.prototype, 'isEqPrim', {
    get: function() {
      if (this._m_isEqPrim !== undefined)
        return this._m_isEqPrim;
      this._m_isEqPrim = this.it == 16705;
      return this._m_isEqPrim;
    }
  });
  Object.defineProperty(ExprIfIntOps.prototype, 'isEqBoxed', {
    get: function() {
      if (this._m_isEqBoxed !== undefined)
        return this._m_isEqBoxed;
      this._m_isEqBoxed = this.it == this.boxed;
      return this._m_isEqBoxed;
    }
  });

  return ExprIfIntOps;
})();
return ExprIfIntOps;
}));

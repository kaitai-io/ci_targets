// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Expr0 = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var Expr0 = (function() {
  function Expr0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Expr0.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
  }
  Object.defineProperty(Expr0.prototype, 'mustBeF7', {
    get: function() {
      if (this._m_mustBeF7 !== undefined)
        return this._m_mustBeF7;
      this._m_mustBeF7 = (7 + 240);
      return this._m_mustBeF7;
    }
  });
  Object.defineProperty(Expr0.prototype, 'mustBeAbc123', {
    get: function() {
      if (this._m_mustBeAbc123 !== undefined)
        return this._m_mustBeAbc123;
      this._m_mustBeAbc123 = "abc" + "123";
      return this._m_mustBeAbc123;
    }
  });

  return Expr0;
})();
return Expr0;
}));

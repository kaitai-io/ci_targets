// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var Expr0 = (function() {
  function Expr0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

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

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Expr0', [], function() {
    return Expr0;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Expr0;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprToITrailing || (root.ExprToITrailing = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprToITrailing_, KaitaiStream) {
var ExprToITrailing = (function() {
  function ExprToITrailing(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprToITrailing.prototype._read = function() {
  }
  Object.defineProperty(ExprToITrailing.prototype, 'toIGarbage', {
    get: function() {
      if (this._m_toIGarbage !== undefined)
        return this._m_toIGarbage;
      this._m_toIGarbage = Number.parseInt("123_.^", 10);
      return this._m_toIGarbage;
    }
  });
  Object.defineProperty(ExprToITrailing.prototype, 'toIR10', {
    get: function() {
      if (this._m_toIR10 !== undefined)
        return this._m_toIR10;
      this._m_toIR10 = Number.parseInt("9173abc", 10);
      return this._m_toIR10;
    }
  });
  Object.defineProperty(ExprToITrailing.prototype, 'toIR16', {
    get: function() {
      if (this._m_toIR16 !== undefined)
        return this._m_toIR16;
      this._m_toIR16 = Number.parseInt("9173abc", 16);
      return this._m_toIR16;
    }
  });

  return ExprToITrailing;
})();
ExprToITrailing_.ExprToITrailing = ExprToITrailing;
});

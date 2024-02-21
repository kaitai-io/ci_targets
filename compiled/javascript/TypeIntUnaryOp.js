// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TypeIntUnaryOp || (root.TypeIntUnaryOp = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TypeIntUnaryOp_, KaitaiStream) {
var TypeIntUnaryOp = (function() {
  function TypeIntUnaryOp(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TypeIntUnaryOp.prototype._read = function() {
    this.valueS2 = this._io.readS2le();
    this.valueS8 = this._io.readS8le();
  }
  Object.defineProperty(TypeIntUnaryOp.prototype, 'unaryS2', {
    get: function() {
      if (this._m_unaryS2 !== undefined)
        return this._m_unaryS2;
      this._m_unaryS2 = -(this.valueS2);
      return this._m_unaryS2;
    }
  });
  Object.defineProperty(TypeIntUnaryOp.prototype, 'unaryS8', {
    get: function() {
      if (this._m_unaryS8 !== undefined)
        return this._m_unaryS8;
      this._m_unaryS8 = -(this.valueS8);
      return this._m_unaryS8;
    }
  });

  return TypeIntUnaryOp;
})();
TypeIntUnaryOp_.TypeIntUnaryOp = TypeIntUnaryOp;
});

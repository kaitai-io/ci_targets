// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprBytesNonLiteral || (root.ExprBytesNonLiteral = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprBytesNonLiteral_, KaitaiStream) {
var ExprBytesNonLiteral = (function() {
  function ExprBytesNonLiteral(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprBytesNonLiteral.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = this._io.readU1();
  }
  Object.defineProperty(ExprBytesNonLiteral.prototype, 'calcBytes', {
    get: function() {
      if (this._m_calcBytes !== undefined)
        return this._m_calcBytes;
      this._m_calcBytes = new Uint8Array([this.one, this.two]);
      return this._m_calcBytes;
    }
  });

  return ExprBytesNonLiteral;
})();
ExprBytesNonLiteral_.ExprBytesNonLiteral = ExprBytesNonLiteral;
});

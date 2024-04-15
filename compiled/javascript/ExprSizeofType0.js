// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprSizeofType0 || (root.ExprSizeofType0 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprSizeofType0_, KaitaiStream) {
var ExprSizeofType0 = (function() {
  function ExprSizeofType0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprSizeofType0.prototype._read = function() {
  }

  var Block = ExprSizeofType0.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Block.prototype._read = function() {
      this.a = this._io.readU1();
      this.b = this._io.readU4le();
      this.c = this._io.readBytes(2);
    }

    return Block;
  })();
  Object.defineProperty(ExprSizeofType0.prototype, 'sizeofBlock', {
    get: function() {
      if (this._m_sizeofBlock !== undefined)
        return this._m_sizeofBlock;
      this._m_sizeofBlock = 7;
      return this._m_sizeofBlock;
    }
  });

  return ExprSizeofType0;
})();
ExprSizeofType0_.ExprSizeofType0 = ExprSizeofType0;
});

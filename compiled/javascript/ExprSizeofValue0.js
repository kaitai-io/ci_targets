// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprSizeofValue0 || (root.ExprSizeofValue0 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprSizeofValue0_, KaitaiStream) {
var ExprSizeofValue0 = (function() {
  function ExprSizeofValue0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprSizeofValue0.prototype._read = function() {
    this.block1 = new Block(this._io, this, this._root);
    this.more = this._io.readU2le();
  }

  var Block = ExprSizeofValue0.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Block.prototype._read = function() {
      this.a = this._io.readU1();
      this.b = this._io.readU4le();
      this.c = this._io.readBytes(2);
    }

    return Block;
  })();
  Object.defineProperty(ExprSizeofValue0.prototype, 'sizeofBlockC', {
    get: function() {
      if (this._m_sizeofBlockC !== undefined)
        return this._m_sizeofBlockC;
      this._m_sizeofBlockC = 2;
      return this._m_sizeofBlockC;
    }
  });
  Object.defineProperty(ExprSizeofValue0.prototype, 'selfSizeof', {
    get: function() {
      if (this._m_selfSizeof !== undefined)
        return this._m_selfSizeof;
      this._m_selfSizeof = 9;
      return this._m_selfSizeof;
    }
  });
  Object.defineProperty(ExprSizeofValue0.prototype, 'sizeofBlockA', {
    get: function() {
      if (this._m_sizeofBlockA !== undefined)
        return this._m_sizeofBlockA;
      this._m_sizeofBlockA = 1;
      return this._m_sizeofBlockA;
    }
  });
  Object.defineProperty(ExprSizeofValue0.prototype, 'sizeofBlockB', {
    get: function() {
      if (this._m_sizeofBlockB !== undefined)
        return this._m_sizeofBlockB;
      this._m_sizeofBlockB = 4;
      return this._m_sizeofBlockB;
    }
  });
  Object.defineProperty(ExprSizeofValue0.prototype, 'sizeofBlock', {
    get: function() {
      if (this._m_sizeofBlock !== undefined)
        return this._m_sizeofBlock;
      this._m_sizeofBlock = 7;
      return this._m_sizeofBlock;
    }
  });

  return ExprSizeofValue0;
})();
ExprSizeofValue0_.ExprSizeofValue0 = ExprSizeofValue0;
});

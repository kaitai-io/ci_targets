// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ExprSizeofValueSized = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ExprSizeofValueSized = (function() {
  function ExprSizeofValueSized(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprSizeofValueSized.prototype._read = function() {
    this._raw_block1 = this._io.readBytes(12);
    var _io__raw_block1 = new KaitaiStream(this._raw_block1);
    this.block1 = new Block(_io__raw_block1, this, this._root);
    this.more = this._io.readU2le();
  }

  var Block = ExprSizeofValueSized.Block = (function() {
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
  Object.defineProperty(ExprSizeofValueSized.prototype, 'selfSizeof', {
    get: function() {
      if (this._m_selfSizeof !== undefined)
        return this._m_selfSizeof;
      this._m_selfSizeof = 14;
      return this._m_selfSizeof;
    }
  });
  Object.defineProperty(ExprSizeofValueSized.prototype, 'sizeofBlock', {
    get: function() {
      if (this._m_sizeofBlock !== undefined)
        return this._m_sizeofBlock;
      this._m_sizeofBlock = 12;
      return this._m_sizeofBlock;
    }
  });
  Object.defineProperty(ExprSizeofValueSized.prototype, 'sizeofBlockB', {
    get: function() {
      if (this._m_sizeofBlockB !== undefined)
        return this._m_sizeofBlockB;
      this._m_sizeofBlockB = 4;
      return this._m_sizeofBlockB;
    }
  });
  Object.defineProperty(ExprSizeofValueSized.prototype, 'sizeofBlockA', {
    get: function() {
      if (this._m_sizeofBlockA !== undefined)
        return this._m_sizeofBlockA;
      this._m_sizeofBlockA = 1;
      return this._m_sizeofBlockA;
    }
  });
  Object.defineProperty(ExprSizeofValueSized.prototype, 'sizeofBlockC', {
    get: function() {
      if (this._m_sizeofBlockC !== undefined)
        return this._m_sizeofBlockC;
      this._m_sizeofBlockC = 2;
      return this._m_sizeofBlockC;
    }
  });

  return ExprSizeofValueSized;
})();
return ExprSizeofValueSized;
}));

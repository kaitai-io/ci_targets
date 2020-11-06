// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ExprSizeofType1 = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ExprSizeofType1 = (function() {
  function ExprSizeofType1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprSizeofType1.prototype._read = function() {
  }

  var Block = ExprSizeofType1.Block = (function() {
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
      this.d = new Subblock(this._io, this, this._root);
    }

    var Subblock = Block.Subblock = (function() {
      function Subblock(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Subblock.prototype._read = function() {
        this.a = this._io.readBytes(4);
      }

      return Subblock;
    })();

    return Block;
  })();
  Object.defineProperty(ExprSizeofType1.prototype, 'sizeofBlock', {
    get: function() {
      if (this._m_sizeofBlock !== undefined)
        return this._m_sizeofBlock;
      this._m_sizeofBlock = 11;
      return this._m_sizeofBlock;
    }
  });
  Object.defineProperty(ExprSizeofType1.prototype, 'sizeofSubblock', {
    get: function() {
      if (this._m_sizeofSubblock !== undefined)
        return this._m_sizeofSubblock;
      this._m_sizeofSubblock = 4;
      return this._m_sizeofSubblock;
    }
  });

  return ExprSizeofType1;
})();
return ExprSizeofType1;
}));

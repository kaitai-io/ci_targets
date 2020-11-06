// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ParamsPassArrayUsertype = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ParamsPassArrayUsertype = (function() {
  function ParamsPassArrayUsertype(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassArrayUsertype.prototype._read = function() {
    this.blocks = new Array(2);
    for (var i = 0; i < 2; i++) {
      this.blocks[i] = new Block(this._io, this, this._root);
    }
    this.passBlocks = new ParamType(this._io, this, this._root, this.blocks);
  }

  var Block = ParamsPassArrayUsertype.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Block.prototype._read = function() {
      this.foo = this._io.readU1();
    }

    return Block;
  })();

  var ParamType = ParamsPassArrayUsertype.ParamType = (function() {
    function ParamType(_io, _parent, _root, bar) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.bar = bar;

      this._read();
    }
    ParamType.prototype._read = function() {
      this.one = this._io.readBytes(this.bar[0].foo);
      this.two = this._io.readBytes(this.bar[1].foo);
    }

    return ParamType;
  })();

  return ParamsPassArrayUsertype;
})();
return ParamsPassArrayUsertype;
}));

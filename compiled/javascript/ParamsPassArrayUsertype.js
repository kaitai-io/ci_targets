// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassArrayUsertype || (root.ParamsPassArrayUsertype = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassArrayUsertype_, KaitaiStream) {
var ParamsPassArrayUsertype = (function() {
  function ParamsPassArrayUsertype(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassArrayUsertype.prototype._read = function() {
    this.blocks = [];
    for (var i = 0; i < 2; i++) {
      this.blocks.push(new Block(this._io, this, this._root));
    }
    this.passBlocks = new ParamType(this._io, this, this._root, this.blocks);
  }

  var Block = ParamsPassArrayUsertype.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

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
      this._root = _root;
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
ParamsPassArrayUsertype_.ParamsPassArrayUsertype = ParamsPassArrayUsertype;
});

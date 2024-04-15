// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassUsertype || (root.ParamsPassUsertype = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassUsertype_, KaitaiStream) {
var ParamsPassUsertype = (function() {
  function ParamsPassUsertype(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassUsertype.prototype._read = function() {
    this.first = new Block(this._io, this, this._root);
    this.one = new ParamType(this._io, this, this._root, this.first);
  }

  var Block = ParamsPassUsertype.Block = (function() {
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

  var ParamType = ParamsPassUsertype.ParamType = (function() {
    function ParamType(_io, _parent, _root, foo) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;
      this.foo = foo;

      this._read();
    }
    ParamType.prototype._read = function() {
      this.buf = this._io.readBytes(this.foo.foo);
    }

    return ParamType;
  })();

  return ParamsPassUsertype;
})();
ParamsPassUsertype_.ParamsPassUsertype = ParamsPassUsertype;
});

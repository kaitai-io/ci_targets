// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ParamsPassUsertype = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
      this._root = _root || this;

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
      this._root = _root || this;
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
return ParamsPassUsertype;
}));

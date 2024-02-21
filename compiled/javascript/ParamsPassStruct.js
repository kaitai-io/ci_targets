// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassStruct || (root.ParamsPassStruct = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassStruct_, KaitaiStream) {
var ParamsPassStruct = (function() {
  function ParamsPassStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassStruct.prototype._read = function() {
    this.first = new Block(this._io, this, this._root);
    this.one = new StructType(this._io, this, this._root, this.first);
  }

  var Block = ParamsPassStruct.Block = (function() {
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

  var StructType = ParamsPassStruct.StructType = (function() {
    function StructType(_io, _parent, _root, foo) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.foo = foo;

      this._read();
    }
    StructType.prototype._read = function() {
      this.bar = new Baz(this._io, this, this._root, this.foo);
    }

    var Baz = StructType.Baz = (function() {
      function Baz(_io, _parent, _root, foo) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;
        this.foo = foo;

        this._read();
      }
      Baz.prototype._read = function() {
        this.qux = this._io.readU1();
      }

      return Baz;
    })();

    return StructType;
  })();

  return ParamsPassStruct;
})();
ParamsPassStruct_.ParamsPassStruct = ParamsPassStruct;
});

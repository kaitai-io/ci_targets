// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassIo || (root.ParamsPassIo = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassIo_, KaitaiStream) {
var ParamsPassIo = (function() {
  function ParamsPassIo(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassIo.prototype._read = function() {
    this._raw_first = this._io.readBytes(1);
    var _io__raw_first = new KaitaiStream(this._raw_first);
    this.first = new Block(_io__raw_first, this, this._root);
    this.one = new ParamType(this._io, this, this._root, (this.first.foo == 255 ? this.first._io : this._root._io));
  }

  var Block = ParamsPassIo.Block = (function() {
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

  var ParamType = ParamsPassIo.ParamType = (function() {
    function ParamType(_io, _parent, _root, argStream) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;
      this.argStream = argStream;

      this._read();
    }
    ParamType.prototype._read = function() {
      this.buf = this._io.readBytes(this.argStream.size);
    }

    return ParamType;
  })();

  return ParamsPassIo;
})();
ParamsPassIo_.ParamsPassIo = ParamsPassIo;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NestedTypeParam || (root.NestedTypeParam = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NestedTypeParam_, KaitaiStream) {
var NestedTypeParam = (function() {
  function NestedTypeParam(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedTypeParam.prototype._read = function() {
    this.mainSeq = new Nested.MyType(this._io, this, this._root, 5);
  }

  var Nested = NestedTypeParam.Nested = (function() {
    function Nested(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Nested.prototype._read = function() {
    }

    var MyType = Nested.MyType = (function() {
      function MyType(_io, _parent, _root, myLen) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;
        this.myLen = myLen;

        this._read();
      }
      MyType.prototype._read = function() {
        this.body = KaitaiStream.bytesToStr(this._io.readBytes(this.myLen), "ASCII");
      }

      return MyType;
    })();

    return Nested;
  })();

  return NestedTypeParam;
})();
NestedTypeParam_.NestedTypeParam = NestedTypeParam;
});

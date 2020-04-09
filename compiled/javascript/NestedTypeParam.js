// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NestedTypeParam = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
      this._root = _root || this;

      this._read();
    }
    Nested.prototype._read = function() {
    }

    var MyType = Nested.MyType = (function() {
      function MyType(_io, _parent, _root, myLen) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;
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
return NestedTypeParam;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NestedSameName || (root.NestedSameName = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NestedSameName_, KaitaiStream) {
var NestedSameName = (function() {
  function NestedSameName(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedSameName.prototype._read = function() {
    this.mainData = new Main(this._io, this, this._root);
    this.dummy = new DummyObj(this._io, this, this._root);
  }

  var DummyObj = NestedSameName.DummyObj = (function() {
    function DummyObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    DummyObj.prototype._read = function() {
    }

    var Foo = DummyObj.Foo = (function() {
      function Foo(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Foo.prototype._read = function() {
      }

      return Foo;
    })();

    return DummyObj;
  })();

  var Main = NestedSameName.Main = (function() {
    function Main(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Main.prototype._read = function() {
      this.mainSize = this._io.readS4le();
      this.foo = new FooObj(this._io, this, this._root);
    }

    var FooObj = Main.FooObj = (function() {
      function FooObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      FooObj.prototype._read = function() {
        this.data = this._io.readBytes(this._parent.mainSize * 2);
      }

      return FooObj;
    })();

    return Main;
  })();

  return NestedSameName;
})();
NestedSameName_.NestedSameName = NestedSameName;
});

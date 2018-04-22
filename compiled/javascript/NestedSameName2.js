// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NestedSameName2 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var NestedSameName2 = (function() {
  function NestedSameName2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NestedSameName2.prototype._read = function() {
    this.version = this._io.readU4le();
    this.mainData = new Main(this._io, this, this._root);
    this.dummy = new DummyObj(this._io, this, this._root);
  }

  var Main = NestedSameName2.Main = (function() {
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
        this.data1 = this._io.readBytes((this._parent.mainSize * 2));
      }

      return FooObj;
    })();

    return Main;
  })();

  var DummyObj = NestedSameName2.DummyObj = (function() {
    function DummyObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    DummyObj.prototype._read = function() {
      this.dummySize = this._io.readS4le();
      this.foo = new FooObj(this._io, this, this._root);
    }

    var FooObj = DummyObj.FooObj = (function() {
      function FooObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      FooObj.prototype._read = function() {
        this.data2 = this._io.readBytes((this._parent.dummySize * 2));
      }

      return FooObj;
    })();

    return DummyObj;
  })();

  return NestedSameName2;
})();
return NestedSameName2;
}));

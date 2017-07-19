// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

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
        this.data = this._io.readBytes((this._parent.mainSize * 2));
      }

      return FooObj;
    })();

    return Main;
  })();

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

  return NestedSameName;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NestedSameName', [], function() {
    return NestedSameName;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NestedSameName;
}

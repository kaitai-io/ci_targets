// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NestedSameName2 = (function() {
  function NestedSameName2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.version = this._io.readU4le();
    this.mainData = new Main(this._io, this, this._root);
    this.dummy = new DummyObj(this._io, this, this._root);
  }

  var Main = NestedSameName2.Main = (function() {
    function Main(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.mainSize = this._io.readS4le();
      this.foo = new FooObj(this._io, this, this._root);
    }

    var FooObj = Main.FooObj = (function() {
      function FooObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

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

      this.dummySize = this._io.readS4le();
      this.foo = new FooObj(this._io, this, this._root);
    }

    var FooObj = DummyObj.FooObj = (function() {
      function FooObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.data2 = this._io.readBytes((this._parent.dummySize * 2));
      }

      return FooObj;
    })();

    return DummyObj;
  })();

  return NestedSameName2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NestedSameName2', [], function() {
    return NestedSameName2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NestedSameName2;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ParamsPassArrayStruct = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ParamsPassArrayStruct = (function() {
  function ParamsPassArrayStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassArrayStruct.prototype._read = function() {
    this.one = new Foo(this._io, this, this._root);
    this.two = new Bar(this._io, this, this._root);
    this.passStructs = new StructType(this._io, this, this._root, this.oneTwo);
  }

  var Foo = ParamsPassArrayStruct.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Foo.prototype._read = function() {
      this.f = this._io.readU1();
    }

    return Foo;
  })();

  var Bar = ParamsPassArrayStruct.Bar = (function() {
    function Bar(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Bar.prototype._read = function() {
      this.b = this._io.readU1();
    }

    return Bar;
  })();

  var StructType = ParamsPassArrayStruct.StructType = (function() {
    function StructType(_io, _parent, _root, structs) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.structs = structs;

      this._read();
    }
    StructType.prototype._read = function() {
    }

    return StructType;
  })();
  Object.defineProperty(ParamsPassArrayStruct.prototype, 'oneTwo', {
    get: function() {
      if (this._m_oneTwo !== undefined)
        return this._m_oneTwo;
      this._m_oneTwo = [this.one, this.two];
      return this._m_oneTwo;
    }
  });

  return ParamsPassArrayStruct;
})();
return ParamsPassArrayStruct;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Test = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var Test = (function() {
  function Test(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Test.prototype._read = function() {
    this.seqBlock = new Test.MyType(2)(this._io, this, null);
  }

  var MyType = Test.MyType = (function() {
    function MyType(_io, _parent, _root, repeatCount) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.repeatCount = repeatCount;

      this._read();
    }
    MyType.prototype._read = function() {
      this.world = this._io.readS4be();
      this.repeatedThing = new Array(this.repeatCount);
      for (var i = 0; i < this.repeatCount; i++) {
        this.repeatedThing[i] = this._io.readS4be();
      }
    }

    return MyType;
  })();

  return Test;
})();
return Test;
}));

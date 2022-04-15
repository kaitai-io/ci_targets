// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.DebugArrayUser = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var DebugArrayUser = (function() {
  function DebugArrayUser(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  DebugArrayUser.prototype._read = function() {
    this._debug.oneCat = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.oneCat = new Cat(this._io, this, this._root);
    this.oneCat._read();
    this._debug.oneCat.end = this._io.pos;
    this._debug.arrayOfCats = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.arrayOfCats = [];
    this._debug.arrayOfCats.arr = [];
    for (var i = 0; i < 3; i++) {
      this._debug.arrayOfCats.arr[i] = { start: this._io.pos, ioOffset: this._io.byteOffset };
      var _t_arrayOfCats = new Cat(this._io, this, this._root);
      _t_arrayOfCats._read();
      this.arrayOfCats.push(_t_arrayOfCats);
      this._debug.arrayOfCats.arr[i].end = this._io.pos;
    }
    this._debug.arrayOfCats.end = this._io.pos;
  }

  var Cat = DebugArrayUser.Cat = (function() {
    function Cat(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this._debug = {};

    }
    Cat.prototype._read = function() {
      this._debug.meow = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.meow = this._io.readU1();
      this._debug.meow.end = this._io.pos;
    }

    return Cat;
  })();

  return DebugArrayUser;
})();
return DebugArrayUser;
}));

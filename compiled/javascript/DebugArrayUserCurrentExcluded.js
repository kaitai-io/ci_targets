// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.DebugArrayUserCurrentExcluded || (root.DebugArrayUserCurrentExcluded = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (DebugArrayUserCurrentExcluded_, KaitaiStream) {
var DebugArrayUserCurrentExcluded = (function() {
  function DebugArrayUserCurrentExcluded(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  DebugArrayUserCurrentExcluded.prototype._read = function() {
    this._debug.arrayOfCats = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this._debug.arrayOfCats.arr = [];
    this.arrayOfCats = [];
    for (var i = 0; i < 3; i++) {
      this._debug.arrayOfCats.arr[i] = { start: this._io.pos, ioOffset: this._io.byteOffset };
      var _t_arrayOfCats = new Cat(this._io, this, this._root);
      try {
        _t_arrayOfCats._read();
      } finally {
        this.arrayOfCats.push(_t_arrayOfCats);
      }
      this._debug.arrayOfCats.arr[i].end = this._io.pos;
    }
    this._debug.arrayOfCats.end = this._io.pos;
  }

  var Cat = DebugArrayUserCurrentExcluded.Cat = (function() {
    function Cat(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;
      this._debug = {};

    }
    Cat.prototype._read = function() {
      this._debug.meow = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.meow = this._io.readBytes(3 - this._parent.arrayOfCats.length);
      this._debug.meow.end = this._io.pos;
    }

    return Cat;
  })();

  return DebugArrayUserCurrentExcluded;
})();
DebugArrayUserCurrentExcluded_.DebugArrayUserCurrentExcluded = DebugArrayUserCurrentExcluded;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Debug0 || (root.Debug0 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Debug0_, KaitaiStream) {
var Debug0 = (function() {
  function Debug0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  Debug0.prototype._read = function() {
    this._debug.one = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.one = this._io.readU1();
    this._debug.one.end = this._io.pos;
    this._debug.arrayOfInts = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this._debug.arrayOfInts.arr = [];
    this.arrayOfInts = [];
    for (var i = 0; i < 3; i++) {
      this._debug.arrayOfInts.arr[i] = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.arrayOfInts.push(this._io.readU1());
      this._debug.arrayOfInts.arr[i].end = this._io.pos;
    }
    this._debug.arrayOfInts.end = this._io.pos;
    this._debug._unnamed2 = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this._unnamed2 = this._io.readU1();
    this._debug._unnamed2.end = this._io.pos;
  }

  return Debug0;
})();
Debug0_.Debug0 = Debug0;
});

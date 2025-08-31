// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatNTermBytes || (root.RepeatNTermBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatNTermBytes_, KaitaiStream) {
var RepeatNTermBytes = (function() {
  function RepeatNTermBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNTermBytes.prototype._read = function() {
    this.records1 = [];
    for (var i = 0; i < 2; i++) {
      this.records1.push(this._io.readBytesTerm(170, false, true, true));
    }
    this.records2 = [];
    for (var i = 0; i < 2; i++) {
      this.records2.push(this._io.readBytesTerm(170, true, true, true));
    }
    this.records3 = [];
    for (var i = 0; i < 2; i++) {
      this.records3.push(this._io.readBytesTerm(85, false, false, true));
    }
  }

  return RepeatNTermBytes;
})();
RepeatNTermBytes_.RepeatNTermBytes = RepeatNTermBytes;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilS4 || (root.RepeatUntilS4 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilS4_, KaitaiStream) {
var RepeatUntilS4 = (function() {
  function RepeatUntilS4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilS4.prototype._read = function() {
    this.entries = [];
    var i = 0;
    do {
      var _ = this._io.readS4le();
      this.entries.push(_);
      i++;
    } while (!(_ == -1));
    this.afterall = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "ASCII");
  }

  return RepeatUntilS4;
})();
RepeatUntilS4_.RepeatUntilS4 = RepeatUntilS4;
});

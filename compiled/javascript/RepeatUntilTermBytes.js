// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilTermBytes || (root.RepeatUntilTermBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilTermBytes_, KaitaiStream) {
var RepeatUntilTermBytes = (function() {
  function RepeatUntilTermBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilTermBytes.prototype._read = function() {
    this.records1 = [];
    var i = 0;
    do {
      var _ = this._io.readBytesTerm(170, false, true, true);
      this.records1.push(_);
      i++;
    } while (!(_.length == 0));
    this.records2 = [];
    var i = 0;
    do {
      var _ = this._io.readBytesTerm(170, true, true, true);
      this.records2.push(_);
      i++;
    } while (!((KaitaiStream.byteArrayCompare(_, new Uint8Array([170])) != 0)));
    this.records3 = [];
    var i = 0;
    do {
      var _ = this._io.readBytesTerm(85, false, false, true);
      this.records3.push(_);
      i++;
    } while (!((KaitaiStream.byteArrayCompare(_, this.records1[this.records1.length - 1]) == 0)));
  }

  return RepeatUntilTermBytes;
})();
RepeatUntilTermBytes_.RepeatUntilTermBytes = RepeatUntilTermBytes;
});

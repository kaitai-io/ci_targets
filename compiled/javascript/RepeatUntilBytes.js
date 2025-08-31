// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilBytes || (root.RepeatUntilBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilBytes_, KaitaiStream) {
var RepeatUntilBytes = (function() {
  function RepeatUntilBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilBytes.prototype._read = function() {
    this.records = [];
    var i = 0;
    do {
      var _ = this._io.readBytes(5);
      this.records.push(_);
      i++;
    } while (!(_[0] == 170));
  }

  return RepeatUntilBytes;
})();
RepeatUntilBytes_.RepeatUntilBytes = RepeatUntilBytes;
});

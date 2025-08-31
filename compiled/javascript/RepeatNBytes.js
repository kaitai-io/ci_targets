// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatNBytes || (root.RepeatNBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatNBytes_, KaitaiStream) {
var RepeatNBytes = (function() {
  function RepeatNBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNBytes.prototype._read = function() {
    this.records = [];
    for (var i = 0; i < 3; i++) {
      this.records.push(this._io.readBytes(5));
    }
  }

  return RepeatNBytes;
})();
RepeatNBytes_.RepeatNBytes = RepeatNBytes;
});

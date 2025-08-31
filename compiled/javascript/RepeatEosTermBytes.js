// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatEosTermBytes || (root.RepeatEosTermBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatEosTermBytes_, KaitaiStream) {
var RepeatEosTermBytes = (function() {
  function RepeatEosTermBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosTermBytes.prototype._read = function() {
    this.records = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.records.push(this._io.readBytesTerm(178, true, true, true));
      i++;
    }
  }

  return RepeatEosTermBytes;
})();
RepeatEosTermBytes_.RepeatEosTermBytes = RepeatEosTermBytes;
});

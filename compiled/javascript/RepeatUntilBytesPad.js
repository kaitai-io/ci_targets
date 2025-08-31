// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilBytesPad || (root.RepeatUntilBytesPad = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilBytesPad_, KaitaiStream) {
var RepeatUntilBytesPad = (function() {
  function RepeatUntilBytesPad(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilBytesPad.prototype._read = function() {
    this.records = [];
    var i = 0;
    do {
      var _ = KaitaiStream.bytesStripRight(this._io.readBytes(5), 170);
      this.records.push(_);
      i++;
    } while (!(_.length == 5));
  }

  return RepeatUntilBytesPad;
})();
RepeatUntilBytesPad_.RepeatUntilBytesPad = RepeatUntilBytesPad;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatEosBytesPad || (root.RepeatEosBytesPad = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatEosBytesPad_, KaitaiStream) {
var RepeatEosBytesPad = (function() {
  function RepeatEosBytesPad(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosBytesPad.prototype._read = function() {
    this.records = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.records.push(KaitaiStream.bytesStripRight(this._io.readBytes(5), 170));
      i++;
    }
  }

  return RepeatEosBytesPad;
})();
RepeatEosBytesPad_.RepeatEosBytesPad = RepeatEosBytesPad;
});

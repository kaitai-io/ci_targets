// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatNBytesPadTerm || (root.RepeatNBytesPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatNBytesPadTerm_, KaitaiStream) {
var RepeatNBytesPadTerm = (function() {
  function RepeatNBytesPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNBytesPadTerm.prototype._read = function() {
    this.records = [];
    for (var i = 0; i < 3; i++) {
      this.records.push(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(5), 170), 85, true));
    }
  }

  return RepeatNBytesPadTerm;
})();
RepeatNBytesPadTerm_.RepeatNBytesPadTerm = RepeatNBytesPadTerm;
});

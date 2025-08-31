// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilBytesPadTerm || (root.RepeatUntilBytesPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilBytesPadTerm_, KaitaiStream) {
var RepeatUntilBytesPadTerm = (function() {
  function RepeatUntilBytesPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilBytesPadTerm.prototype._read = function() {
    this.records = [];
    var i = 0;
    do {
      var _ = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(5), 170), 85, true);
      this.records.push(_);
      i++;
    } while (!((KaitaiStream.byteArrayCompare(_, new Uint8Array([170, 85])) == 0)));
  }

  return RepeatUntilBytesPadTerm;
})();
RepeatUntilBytesPadTerm_.RepeatUntilBytesPadTerm = RepeatUntilBytesPadTerm;
});

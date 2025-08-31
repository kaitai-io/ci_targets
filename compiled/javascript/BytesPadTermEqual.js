// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BytesPadTermEqual || (root.BytesPadTermEqual = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BytesPadTermEqual_, KaitaiStream) {
var BytesPadTermEqual = (function() {
  function BytesPadTermEqual(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BytesPadTermEqual.prototype._read = function() {
    this.s1 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 64), 64, false);
    this.s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, true);
    this.s3 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 43, false);
    this.s4 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 46), 46, true);
  }

  return BytesPadTermEqual;
})();
BytesPadTermEqual_.BytesPadTermEqual = BytesPadTermEqual;
});

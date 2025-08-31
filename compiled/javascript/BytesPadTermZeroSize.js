// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BytesPadTermZeroSize || (root.BytesPadTermZeroSize = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BytesPadTermZeroSize_, KaitaiStream) {
var BytesPadTermZeroSize = (function() {
  function BytesPadTermZeroSize(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BytesPadTermZeroSize.prototype._read = function() {
    this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(0), 64);
    this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(0), 64, false);
    this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(0), 43), 64, false);
    this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(0), 64, true);
  }

  return BytesPadTermZeroSize;
})();
BytesPadTermZeroSize_.BytesPadTermZeroSize = BytesPadTermZeroSize;
});

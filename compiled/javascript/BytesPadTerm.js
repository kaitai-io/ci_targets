// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BytesPadTerm || (root.BytesPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BytesPadTerm_, KaitaiStream) {
var BytesPadTerm = (function() {
  function BytesPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BytesPadTerm.prototype._read = function() {
    this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), 64);
    this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false);
    this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false);
    this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true);
  }

  return BytesPadTerm;
})();
BytesPadTerm_.BytesPadTerm = BytesPadTerm;
});

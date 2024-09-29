// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrPadTermUtf16 || (root.StrPadTermUtf16 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrPadTermUtf16_, KaitaiStream) {
var StrPadTermUtf16 = (function() {
  function StrPadTermUtf16(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrPadTermUtf16.prototype._read = function() {
    this.strTerm = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminateMulti(this._io.readBytes(10), new Uint8Array([0, 0]), false), "UTF-16LE");
    this.strTermInclude = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminateMulti(this._io.readBytes(10), new Uint8Array([0, 0]), true), "UTF-16LE");
    this.strTermAndPad = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminateMulti(KaitaiStream.bytesStripRight(this._io.readBytes(9), 43), new Uint8Array([0, 0]), false), "UTF-16LE");
  }

  return StrPadTermUtf16;
})();
StrPadTermUtf16_.StrPadTermUtf16 = StrPadTermUtf16;
});

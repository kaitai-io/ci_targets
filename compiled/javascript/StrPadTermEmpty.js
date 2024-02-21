// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrPadTermEmpty || (root.StrPadTermEmpty = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrPadTermEmpty_, KaitaiStream) {
var StrPadTermEmpty = (function() {
  function StrPadTermEmpty(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrPadTermEmpty.prototype._read = function() {
    this.strPad = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(20), 64), "UTF-8");
    this.strTerm = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false), "UTF-8");
    this.strTermAndPad = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false), "UTF-8");
    this.strTermInclude = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true), "UTF-8");
  }

  return StrPadTermEmpty;
})();
StrPadTermEmpty_.StrPadTermEmpty = StrPadTermEmpty;
});

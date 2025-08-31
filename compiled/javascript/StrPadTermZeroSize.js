// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrPadTermZeroSize || (root.StrPadTermZeroSize = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrPadTermZeroSize_, KaitaiStream) {
var StrPadTermZeroSize = (function() {
  function StrPadTermZeroSize(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrPadTermZeroSize.prototype._read = function() {
    this.strPad = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(0), 64), "UTF-8");
    this.strTerm = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(0), 64, false), "UTF-8");
    this.strTermAndPad = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(0), 43), 64, false), "UTF-8");
    this.strTermInclude = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytes(0), 64, true), "UTF-8");
  }

  return StrPadTermZeroSize;
})();
StrPadTermZeroSize_.StrPadTermZeroSize = StrPadTermZeroSize;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.StrEncodings = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var StrEncodings = (function() {
  function StrEncodings(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEncodings.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf1), "ASCII");
    this.lenOf2 = this._io.readU2le();
    this.str2 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf2), "UTF-8");
    this.lenOf3 = this._io.readU2le();
    this.str3 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf3), "SJIS");
    this.lenOf4 = this._io.readU2le();
    this.str4 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf4), "IBM437");
  }

  return StrEncodings;
})();
return StrEncodings;
}));

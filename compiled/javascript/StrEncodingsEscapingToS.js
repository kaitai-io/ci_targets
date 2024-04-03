// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEncodingsEscapingToS || (root.StrEncodingsEscapingToS = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEncodingsEscapingToS_, KaitaiStream) {
var StrEncodingsEscapingToS = (function() {
  function StrEncodingsEscapingToS(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEncodingsEscapingToS.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1Raw = this._io.readBytes(this.lenOf1);
    this.lenOf2 = this._io.readU2le();
    this.str2Raw = this._io.readBytes(this.lenOf2);
    this.lenOf3 = this._io.readU2le();
    this.str3Raw = this._io.readBytes(this.lenOf3);
    this.lenOf4 = this._io.readU2le();
    this.str4Raw = this._io.readBytes(this.lenOf4);
  }
  Object.defineProperty(StrEncodingsEscapingToS.prototype, 'str1', {
    get: function() {
      if (this._m_str1 !== undefined)
        return this._m_str1;
      this._m_str1 = KaitaiStream.bytesToStr(this.str1Raw, "ASCII\\x");
      return this._m_str1;
    }
  });
  Object.defineProperty(StrEncodingsEscapingToS.prototype, 'str2', {
    get: function() {
      if (this._m_str2 !== undefined)
        return this._m_str2;
      this._m_str2 = KaitaiStream.bytesToStr(this.str2Raw, "UTF-8\'x");
      return this._m_str2;
    }
  });
  Object.defineProperty(StrEncodingsEscapingToS.prototype, 'str3', {
    get: function() {
      if (this._m_str3 !== undefined)
        return this._m_str3;
      this._m_str3 = KaitaiStream.bytesToStr(this.str3Raw, "SJIS\"x");
      return this._m_str3;
    }
  });
  Object.defineProperty(StrEncodingsEscapingToS.prototype, 'str4', {
    get: function() {
      if (this._m_str4 !== undefined)
        return this._m_str4;
      this._m_str4 = KaitaiStream.bytesToStr(this.str4Raw, "IBM437\nx");
      return this._m_str4;
    }
  });

  return StrEncodingsEscapingToS;
})();
StrEncodingsEscapingToS_.StrEncodingsEscapingToS = StrEncodingsEscapingToS;
});

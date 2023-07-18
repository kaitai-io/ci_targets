// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidEqStrEncodings = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ValidEqStrEncodings = (function() {
  function ValidEqStrEncodings(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidEqStrEncodings.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf1), "ASCII");
    if (!(this.str1 == "Some ASCII")) {
      throw new KaitaiStream.ValidationNotEqualError("Some ASCII", this.str1, this._io, "/seq/1");
    }
    this.lenOf2 = this._io.readU2le();
    this.str2 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf2), "UTF-8");
    if (!(this.str2 == "\u3053\u3093\u306b\u3061\u306f")) {
      throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str2, this._io, "/seq/3");
    }
    this.lenOf3 = this._io.readU2le();
    this.str3 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf3), "SJIS");
    if (!(this.str3 == "\u3053\u3093\u306b\u3061\u306f")) {
      throw new KaitaiStream.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", this.str3, this._io, "/seq/5");
    }
    this.lenOf4 = this._io.readU2le();
    this.str4 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf4), "IBM437");
    if (!(this.str4 == "\u2591\u2592\u2593")) {
      throw new KaitaiStream.ValidationNotEqualError("\u2591\u2592\u2593", this.str4, this._io, "/seq/7");
    }
  }

  return ValidEqStrEncodings;
})();
return ValidEqStrEncodings;
}));

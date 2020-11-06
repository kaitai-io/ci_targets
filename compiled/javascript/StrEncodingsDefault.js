// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.StrEncodingsDefault = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var StrEncodingsDefault = (function() {
  function StrEncodingsDefault(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEncodingsDefault.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this.str1 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf1), "UTF-8");
    this.rest = new Subtype(this._io, this, this._root);
  }

  var Subtype = StrEncodingsDefault.Subtype = (function() {
    function Subtype(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Subtype.prototype._read = function() {
      this.lenOf2 = this._io.readU2le();
      this.str2 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf2), "UTF-8");
      this.lenOf3 = this._io.readU2le();
      this.str3 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf3), "SJIS");
      this.lenOf4 = this._io.readU2le();
      this.str4 = KaitaiStream.bytesToStr(this._io.readBytes(this.lenOf4), "CP437");
    }

    return Subtype;
  })();

  return StrEncodingsDefault;
})();
return StrEncodingsDefault;
}));

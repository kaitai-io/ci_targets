// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidLong || (root.ValidLong = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidLong_, KaitaiStream) {
var ValidLong = (function() {
  function ValidLong(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidLong.prototype._read = function() {
    this.magic1 = this._io.readBytes(6);
    if (!((KaitaiStream.byteArrayCompare(this.magic1, [80, 65, 67, 75, 45, 49]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 49], this.magic1, this._io, "/seq/0");
    }
    this.uint8 = this._io.readU1();
    if (!(this.uint8 == 255)) {
      throw new KaitaiStream.ValidationNotEqualError(255, this.uint8, this._io, "/seq/1");
    }
    this.sint8 = this._io.readS1();
    if (!(this.sint8 == -1)) {
      throw new KaitaiStream.ValidationNotEqualError(-1, this.sint8, this._io, "/seq/2");
    }
    this.magicUint = KaitaiStream.bytesToStr(this._io.readBytes(10), "UTF-8");
    if (!(this.magicUint == "PACK-U-DEF")) {
      throw new KaitaiStream.ValidationNotEqualError("PACK-U-DEF", this.magicUint, this._io, "/seq/3");
    }
    this.uint16 = this._io.readU2le();
    if (!(this.uint16 == 65535)) {
      throw new KaitaiStream.ValidationNotEqualError(65535, this.uint16, this._io, "/seq/4");
    }
    this.uint32 = this._io.readU4le();
    if (!(this.uint32 == 4294967295)) {
      throw new KaitaiStream.ValidationNotEqualError(4294967295, this.uint32, this._io, "/seq/5");
    }
    this.uint64 = this._io.readU8le();
    if (!(this.uint64 == 18446744073709551615)) {
      throw new KaitaiStream.ValidationNotEqualError(18446744073709551615, this.uint64, this._io, "/seq/6");
    }
    this.magicSint = KaitaiStream.bytesToStr(this._io.readBytes(10), "UTF-8");
    if (!(this.magicSint == "PACK-S-DEF")) {
      throw new KaitaiStream.ValidationNotEqualError("PACK-S-DEF", this.magicSint, this._io, "/seq/7");
    }
    this.sint16 = this._io.readS2le();
    if (!(this.sint16 == -1)) {
      throw new KaitaiStream.ValidationNotEqualError(-1, this.sint16, this._io, "/seq/8");
    }
    this.sint32 = this._io.readS4le();
    if (!(this.sint32 == -1)) {
      throw new KaitaiStream.ValidationNotEqualError(-1, this.sint32, this._io, "/seq/9");
    }
    this.sint64 = this._io.readS8le();
    if (!(this.sint64 == -1)) {
      throw new KaitaiStream.ValidationNotEqualError(-1, this.sint64, this._io, "/seq/10");
    }
  }

  return ValidLong;
})();
ValidLong_.ValidLong = ValidLong;
});

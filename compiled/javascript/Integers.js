// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Integers || (root.Integers = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Integers_, KaitaiStream) {
var Integers = (function() {
  function Integers(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Integers.prototype._read = function() {
    this.magic1 = this._io.readBytes(6);
    if (!((KaitaiStream.byteArrayCompare(this.magic1, [80, 65, 67, 75, 45, 49]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 49], this.magic1, this._io, "/seq/0");
    }
    this.uint8 = this._io.readU1();
    this.sint8 = this._io.readS1();
    this.magicUint = this._io.readBytes(10);
    if (!((KaitaiStream.byteArrayCompare(this.magicUint, [80, 65, 67, 75, 45, 85, 45, 68, 69, 70]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 85, 45, 68, 69, 70], this.magicUint, this._io, "/seq/3");
    }
    this.uint16 = this._io.readU2le();
    this.uint32 = this._io.readU4le();
    this.uint64 = this._io.readU8le();
    this.magicSint = this._io.readBytes(10);
    if (!((KaitaiStream.byteArrayCompare(this.magicSint, [80, 65, 67, 75, 45, 83, 45, 68, 69, 70]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 83, 45, 68, 69, 70], this.magicSint, this._io, "/seq/7");
    }
    this.sint16 = this._io.readS2le();
    this.sint32 = this._io.readS4le();
    this.sint64 = this._io.readS8le();
    this.magicUintLe = this._io.readBytes(9);
    if (!((KaitaiStream.byteArrayCompare(this.magicUintLe, [80, 65, 67, 75, 45, 85, 45, 76, 69]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 85, 45, 76, 69], this.magicUintLe, this._io, "/seq/11");
    }
    this.uint16le = this._io.readU2le();
    this.uint32le = this._io.readU4le();
    this.uint64le = this._io.readU8le();
    this.magicSintLe = this._io.readBytes(9);
    if (!((KaitaiStream.byteArrayCompare(this.magicSintLe, [80, 65, 67, 75, 45, 83, 45, 76, 69]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 83, 45, 76, 69], this.magicSintLe, this._io, "/seq/15");
    }
    this.sint16le = this._io.readS2le();
    this.sint32le = this._io.readS4le();
    this.sint64le = this._io.readS8le();
    this.magicUintBe = this._io.readBytes(9);
    if (!((KaitaiStream.byteArrayCompare(this.magicUintBe, [80, 65, 67, 75, 45, 85, 45, 66, 69]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 85, 45, 66, 69], this.magicUintBe, this._io, "/seq/19");
    }
    this.uint16be = this._io.readU2be();
    this.uint32be = this._io.readU4be();
    this.uint64be = this._io.readU8be();
    this.magicSintBe = this._io.readBytes(9);
    if (!((KaitaiStream.byteArrayCompare(this.magicSintBe, [80, 65, 67, 75, 45, 83, 45, 66, 69]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 83, 45, 66, 69], this.magicSintBe, this._io, "/seq/23");
    }
    this.sint16be = this._io.readS2be();
    this.sint32be = this._io.readS4be();
    this.sint64be = this._io.readS8be();
  }

  return Integers;
})();
Integers_.Integers = Integers;
});

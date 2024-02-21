// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.FixedContents || (root.FixedContents = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (FixedContents_, KaitaiStream) {
var FixedContents = (function() {
  function FixedContents(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  FixedContents.prototype._read = function() {
    this.normal = this._io.readBytes(6);
    if (!((KaitaiStream.byteArrayCompare(this.normal, [80, 65, 67, 75, 45, 49]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([80, 65, 67, 75, 45, 49], this.normal, this._io, "/seq/0");
    }
    this.highBit8 = this._io.readBytes(2);
    if (!((KaitaiStream.byteArrayCompare(this.highBit8, [255, 255]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([255, 255], this.highBit8, this._io, "/seq/1");
    }
  }

  return FixedContents;
})();
FixedContents_.FixedContents = FixedContents;
});

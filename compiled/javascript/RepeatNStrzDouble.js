// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatNStrzDouble = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var RepeatNStrzDouble = (function() {
  function RepeatNStrzDouble(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNStrzDouble.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.lines1 = new Array(Math.floor(this.qty / 2));
    for (var i = 0; i < Math.floor(this.qty / 2); i++) {
      this.lines1[i] = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }
    this.lines2 = new Array(Math.floor(this.qty / 2));
    for (var i = 0; i < Math.floor(this.qty / 2); i++) {
      this.lines2[i] = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }
  }

  return RepeatNStrzDouble;
})();
return RepeatNStrzDouble;
}));

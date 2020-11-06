// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatNStrz = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var RepeatNStrz = (function() {
  function RepeatNStrz(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNStrz.prototype._read = function() {
    this.qty = this._io.readU4le();
    this.lines = new Array(this.qty);
    for (var i = 0; i < this.qty; i++) {
      this.lines[i] = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
    }
  }

  return RepeatNStrz;
})();
return RepeatNStrz;
}));

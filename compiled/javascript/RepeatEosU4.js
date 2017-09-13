// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatEosU4 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var RepeatEosU4 = (function() {
  function RepeatEosU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosU4.prototype._read = function() {
    this.numbers = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.numbers.push(this._io.readU4le());
      i++;
    }
  }

  return RepeatEosU4;
})();
return RepeatEosU4;
}));

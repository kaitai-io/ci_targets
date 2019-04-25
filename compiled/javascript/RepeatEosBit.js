// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatEosBit = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var RepeatEosBit = (function() {
  function RepeatEosBit(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosBit.prototype._read = function() {
    this.nibbles = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.nibbles.push(this._io.readBitsInt(4));
      i++;
    }
  }

  return RepeatEosBit;
})();
return RepeatEosBit;
}));

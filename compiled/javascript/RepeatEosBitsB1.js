// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatEosBitsB1 || (root.RepeatEosBitsB1 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatEosBitsB1_, KaitaiStream) {
var RepeatEosBitsB1 = (function() {
  function RepeatEosBitsB1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosBitsB1.prototype._read = function() {
    this.bits = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.bits.push(this._io.readBitsIntBe(1) != 0);
      i++;
    }
  }

  return RepeatEosBitsB1;
})();
RepeatEosBitsB1_.RepeatEosBitsB1 = RepeatEosBitsB1;
});

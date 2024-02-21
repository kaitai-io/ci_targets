// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatEosBit || (root.RepeatEosBit = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatEosBit_, KaitaiStream) {
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
      this.nibbles.push(this._io.readBitsIntBe(4));
      i++;
    }
  }

  return RepeatEosBit;
})();
RepeatEosBit_.RepeatEosBit = RepeatEosBit;
});

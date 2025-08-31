// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIoPosBits || (root.ExprIoPosBits = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIoPosBits_, KaitaiStream) {
var ExprIoPosBits = (function() {
  function ExprIoPosBits(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIoPosBits.prototype._read = function() {
    this.foo = this._io.readBitsIntBe(3);
    if (this._io.pos == 1) {
      this.bar = this._io.readBitsIntBe(5);
    }
    if (this._io.pos == 1) {
      this.baz = this._io.readBitsIntBe(1) != 0;
    }
    if (this._io.pos == 2) {
      this.qux = this._io.readBitsIntBe(7);
    }
  }

  return ExprIoPosBits;
})();
ExprIoPosBits_.ExprIoPosBits = ExprIoPosBits;
});

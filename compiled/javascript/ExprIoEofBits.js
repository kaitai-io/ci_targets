// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIoEofBits || (root.ExprIoEofBits = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIoEofBits_, KaitaiStream) {
var ExprIoEofBits = (function() {
  function ExprIoEofBits(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  ExprIoEofBits.prototype._read = function() {
    this._debug.foo = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.foo = this._io.readBitsIntBe(20);
    this._debug.foo.end = this._io.pos;
    if (!(this._io.isEof())) {
      this._debug.bar = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.bar = this._io.readBitsIntBe(4);
      this._debug.bar.end = this._io.pos;
    }
    if (!(this._io.isEof())) {
      this._debug.baz = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.baz = this._io.readBitsIntBe(16);
      this._debug.baz.end = this._io.pos;
    }
    this._debug.align = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.align = this._io.readBytes(0);
    this._debug.align.end = this._io.pos;
    if (!(this._io.isEof())) {
      this._debug.qux = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.qux = this._io.readBitsIntBe(16);
      this._debug.qux.end = this._io.pos;
    }
  }

  return ExprIoEofBits;
})();
ExprIoEofBits_.ExprIoEofBits = ExprIoEofBits;
});

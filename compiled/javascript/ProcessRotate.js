// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessRotate = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ProcessRotate = (function() {
  function ProcessRotate(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRotate.prototype._read = function() {
    this._raw_buf1 = this._io.readBytes(5);
    this.buf1 = KaitaiStream.processRotateLeft(this._raw_buf1, 3, 1);
    this._raw_buf2 = this._io.readBytes(5);
    this.buf2 = KaitaiStream.processRotateLeft(this._raw_buf2, 8 - (3), 1);
    this.key = this._io.readU1();
    this._raw_buf3 = this._io.readBytes(5);
    this.buf3 = KaitaiStream.processRotateLeft(this._raw_buf3, this.key, 1);
  }

  return ProcessRotate;
})();
return ProcessRotate;
}));

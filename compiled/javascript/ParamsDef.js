// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ParamsDef = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ParamsDef = (function() {
  function ParamsDef(_io, _parent, _root, len, hasTrailer) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.len = len;
    this.hasTrailer = hasTrailer;

    this._read();
  }
  ParamsDef.prototype._read = function() {
    this.buf = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    if (this.hasTrailer) {
      this.trailer = this._io.readU1();
    }
  }

  return ParamsDef;
})();
return ParamsDef;
}));

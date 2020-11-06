// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessXor4Const = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ProcessXor4Const = (function() {
  function ProcessXor4Const(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessXor4Const.prototype._read = function() {
    this.key = this._io.readBytes(4);
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorMany(this._raw_buf, [236, 187, 163, 20]);
  }

  return ProcessXor4Const;
})();
return ProcessXor4Const;
}));

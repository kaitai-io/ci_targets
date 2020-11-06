// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ZlibWithHeader78 = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ZlibWithHeader78 = (function() {
  function ZlibWithHeader78(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ZlibWithHeader78.prototype._read = function() {
    this._raw_data = this._io.readBytesFull();
    this.data = KaitaiStream.processZlib(this._raw_data);
  }

  return ZlibWithHeader78;
})();
return ZlibWithHeader78;
}));

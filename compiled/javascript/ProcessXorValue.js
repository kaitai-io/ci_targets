// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessXorValue = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ProcessXorValue = (function() {
  function ProcessXorValue(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessXorValue.prototype._read = function() {
    this.key = this._io.readU1();
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorOne(this._raw_buf, this.key);
  }

  return ProcessXorValue;
})();
return ProcessXorValue;
}));

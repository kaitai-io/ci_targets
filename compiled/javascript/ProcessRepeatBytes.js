// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessRepeatBytes = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ProcessRepeatBytes = (function() {
  function ProcessRepeatBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatBytes.prototype._read = function() {
    this.bufs = new Array(2);
    for (var i = 0; i < 2; i++) {
      this._raw_bufs[i] = this._io.readBytes(5);
      this.bufs = KaitaiStream.processXorOne(this._raw_bufs, 158);
    }
  }

  return ProcessRepeatBytes;
})();
return ProcessRepeatBytes;
}));

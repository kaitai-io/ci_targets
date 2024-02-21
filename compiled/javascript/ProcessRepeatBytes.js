// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessRepeatBytes || (root.ProcessRepeatBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessRepeatBytes_, KaitaiStream) {
var ProcessRepeatBytes = (function() {
  function ProcessRepeatBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatBytes.prototype._read = function() {
    this._raw_bufs = [];
    this.bufs = [];
    for (var i = 0; i < 2; i++) {
      this._raw_bufs.push(this._io.readBytes(5));
      this.bufs.push(KaitaiStream.processXorOne(this._raw_bufs[i], 158));
    }
  }

  return ProcessRepeatBytes;
})();
ProcessRepeatBytes_.ProcessRepeatBytes = ProcessRepeatBytes;
});

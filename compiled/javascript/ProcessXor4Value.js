// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessXor4Value || (root.ProcessXor4Value = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessXor4Value_, KaitaiStream) {
var ProcessXor4Value = (function() {
  function ProcessXor4Value(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessXor4Value.prototype._read = function() {
    this.key = this._io.readBytes(4);
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorMany(this._raw_buf, this.key);
  }

  return ProcessXor4Value;
})();
ProcessXor4Value_.ProcessXor4Value = ProcessXor4Value;
});

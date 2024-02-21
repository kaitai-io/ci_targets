// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessXorConst || (root.ProcessXorConst = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessXorConst_, KaitaiStream) {
var ProcessXorConst = (function() {
  function ProcessXorConst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessXorConst.prototype._read = function() {
    this.key = this._io.readU1();
    this._raw_buf = this._io.readBytesFull();
    this.buf = KaitaiStream.processXorOne(this._raw_buf, 255);
  }

  return ProcessXorConst;
})();
ProcessXorConst_.ProcessXorConst = ProcessXorConst;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessXor4Const || (root.ProcessXor4Const = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessXor4Const_, KaitaiStream) {
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
ProcessXor4Const_.ProcessXor4Const = ProcessXor4Const;
});

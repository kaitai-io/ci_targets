// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionBytes || (root.EofExceptionBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionBytes_, KaitaiStream) {
var EofExceptionBytes = (function() {
  function EofExceptionBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionBytes.prototype._read = function() {
    this.buf = this._io.readBytes(13);
  }

  return EofExceptionBytes;
})();
EofExceptionBytes_.EofExceptionBytes = EofExceptionBytes;
});

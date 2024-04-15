// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EosExceptionBytes || (root.EosExceptionBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EosExceptionBytes_, KaitaiStream) {
var EosExceptionBytes = (function() {
  function EosExceptionBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EosExceptionBytes.prototype._read = function() {
    this._raw_envelope = this._io.readBytes(6);
    var _io__raw_envelope = new KaitaiStream(this._raw_envelope);
    this.envelope = new Data(_io__raw_envelope, this, this._root);
  }

  var Data = EosExceptionBytes.Data = (function() {
    function Data(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Data.prototype._read = function() {
      this.buf = this._io.readBytes(7);
    }

    return Data;
  })();

  return EosExceptionBytes;
})();
EosExceptionBytes_.EosExceptionBytes = EosExceptionBytes;
});

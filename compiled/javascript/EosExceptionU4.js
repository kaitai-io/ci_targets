// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EosExceptionU4 || (root.EosExceptionU4 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EosExceptionU4_, KaitaiStream) {
var EosExceptionU4 = (function() {
  function EosExceptionU4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EosExceptionU4.prototype._read = function() {
    this._raw_envelope = this._io.readBytes(6);
    var _io__raw_envelope = new KaitaiStream(this._raw_envelope);
    this.envelope = new Data(_io__raw_envelope, this, this._root);
  }

  var Data = EosExceptionU4.Data = (function() {
    function Data(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Data.prototype._read = function() {
      this.prebuf = this._io.readBytes(3);
      this.failInt = this._io.readU4le();
    }

    return Data;
  })();

  return EosExceptionU4;
})();
EosExceptionU4_.EosExceptionU4 = EosExceptionU4;
});

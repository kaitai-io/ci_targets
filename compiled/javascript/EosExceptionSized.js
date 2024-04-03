// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EosExceptionSized || (root.EosExceptionSized = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EosExceptionSized_, KaitaiStream) {
var EosExceptionSized = (function() {
  function EosExceptionSized(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EosExceptionSized.prototype._read = function() {
    this._raw_envelope = this._io.readBytes(6);
    var _io__raw_envelope = new KaitaiStream(this._raw_envelope);
    this.envelope = new Data(_io__raw_envelope, this, this._root);
  }

  var Data = EosExceptionSized.Data = (function() {
    function Data(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Data.prototype._read = function() {
      this._raw_buf = this._io.readBytes(7);
      var _io__raw_buf = new KaitaiStream(this._raw_buf);
      this.buf = new Foo(_io__raw_buf, this, this._root);
    }

    return Data;
  })();

  var Foo = EosExceptionSized.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Foo.prototype._read = function() {
    }

    return Foo;
  })();

  return EosExceptionSized;
})();
EosExceptionSized_.EosExceptionSized = EosExceptionSized;
});

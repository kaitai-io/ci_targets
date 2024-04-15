// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionSized || (root.EofExceptionSized = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionSized_, KaitaiStream) {
var EofExceptionSized = (function() {
  function EofExceptionSized(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionSized.prototype._read = function() {
    this._raw_buf = this._io.readBytes(13);
    var _io__raw_buf = new KaitaiStream(this._raw_buf);
    this.buf = new Foo(_io__raw_buf, this, this._root);
  }

  var Foo = EofExceptionSized.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Foo.prototype._read = function() {
    }

    return Foo;
  })();

  return EofExceptionSized;
})();
EofExceptionSized_.EofExceptionSized = EofExceptionSized;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailContentsInst || (root.ValidFailContentsInst = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailContentsInst_, KaitaiStream) {
var ValidFailContentsInst = (function() {
  function ValidFailContentsInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailContentsInst.prototype._read = function() {
    if (this.foo.length == 0) {
      this.a = this._io.readBytes(0);
    }
  }
  Object.defineProperty(ValidFailContentsInst.prototype, 'foo', {
    get: function() {
      if (this._m_foo !== undefined)
        return this._m_foo;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_foo = this._io.readBytes(2);
      this._io.seek(_pos);
      return this._m_foo;
    }
  });

  return ValidFailContentsInst;
})();
ValidFailContentsInst_.ValidFailContentsInst = ValidFailContentsInst;
});

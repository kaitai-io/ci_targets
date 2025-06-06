// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailContents || (root.ValidFailContents = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailContents_, KaitaiStream) {
var ValidFailContents = (function() {
  function ValidFailContents(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailContents.prototype._read = function() {
    this.foo = this._io.readBytes(2);
    if (!((KaitaiStream.byteArrayCompare(this.foo, new Uint8Array([81, 65])) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError(new Uint8Array([81, 65]), this.foo, this._io, "/seq/0");
    }
  }

  return ValidFailContents;
})();
ValidFailContents_.ValidFailContents = ValidFailContents;
});

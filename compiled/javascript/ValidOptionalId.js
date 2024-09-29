// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidOptionalId || (root.ValidOptionalId = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidOptionalId_, KaitaiStream) {
var ValidOptionalId = (function() {
  function ValidOptionalId(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidOptionalId.prototype._read = function() {
    this._unnamed0 = this._io.readBytes(6);
    if (!((KaitaiStream.byteArrayCompare(this._unnamed0, new Uint8Array([80, 65, 67, 75, 45, 49])) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError(new Uint8Array([80, 65, 67, 75, 45, 49]), this._unnamed0, this._io, "/seq/0");
    }
    this._unnamed1 = this._io.readU1();
    if (!(this._unnamed1 == 255)) {
      throw new KaitaiStream.ValidationNotEqualError(255, this._unnamed1, this._io, "/seq/1");
    }
    this._unnamed2 = this._io.readS1();
    var _ = this._unnamed2;
    if (!(_ == -1)) {
      throw new KaitaiStream.ValidationExprError(this._unnamed2, this._io, "/seq/2");
    }
  }

  return ValidOptionalId;
})();
ValidOptionalId_.ValidOptionalId = ValidOptionalId;
});

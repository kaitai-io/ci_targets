// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatContents || (root.ValidFailRepeatContents = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatContents_, KaitaiStream) {
var ValidFailRepeatContents = (function() {
  function ValidFailRepeatContents(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatContents.prototype._read = function() {
    this.foo = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.foo.push(this._io.readBytes(4));
      if (!((KaitaiStream.byteArrayCompare(this.foo[i], new Uint8Array([18, 52, 86, 120])) == 0))) {
        throw new KaitaiStream.ValidationNotEqualError(new Uint8Array([18, 52, 86, 120]), this.foo[i], this._io, "/seq/0");
      }
      i++;
    }
  }

  return ValidFailRepeatContents;
})();
ValidFailRepeatContents_.ValidFailRepeatContents = ValidFailRepeatContents;
});

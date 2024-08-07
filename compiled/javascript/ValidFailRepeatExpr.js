// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatExpr || (root.ValidFailRepeatExpr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatExpr_, KaitaiStream) {
var ValidFailRepeatExpr = (function() {
  function ValidFailRepeatExpr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatExpr.prototype._read = function() {
    this.foo = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.foo.push(this._io.readBytes(4));
      var _ = this.foo[i];
      if (!((KaitaiStream.byteArrayCompare(_, [0, 18, 52, 86]) != 0))) {
        throw new KaitaiStream.ValidationExprError(this.foo[i], this._io, "/seq/0");
      }
      i++;
    }
  }

  return ValidFailRepeatExpr;
})();
ValidFailRepeatExpr_.ValidFailRepeatExpr = ValidFailRepeatExpr;
});

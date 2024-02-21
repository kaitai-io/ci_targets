// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailExpr || (root.ValidFailExpr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailExpr_, KaitaiStream) {
var ValidFailExpr = (function() {
  function ValidFailExpr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailExpr.prototype._read = function() {
    this.foo = this._io.readU1();
    var _ = this.foo;
    if (!(_ == 1)) {
      throw new KaitaiStream.ValidationExprError(this.foo, this._io, "/seq/0");
    }
    this.bar = this._io.readS2le();
    var _ = this.bar;
    if (!( ((_ < -190) || (_ > -190)) )) {
      throw new KaitaiStream.ValidationExprError(this.bar, this._io, "/seq/1");
    }
  }

  return ValidFailExpr;
})();
ValidFailExpr_.ValidFailExpr = ValidFailExpr;
});

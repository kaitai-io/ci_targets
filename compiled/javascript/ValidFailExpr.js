// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailExpr = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
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
return ValidFailExpr;
}));

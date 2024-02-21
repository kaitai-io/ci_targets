// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './Imported2'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./Imported2'));
  } else {
    factory(root.Imported1 || (root.Imported1 = {}), root.KaitaiStream, root.Imported2 || (root.Imported2 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (Imported1_, KaitaiStream, Imported2_) {
var Imported1 = (function() {
  function Imported1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Imported1.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new Imported2_.Imported2(this._io, this, null);
  }

  return Imported1;
})();
Imported1_.Imported1 = Imported1;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './Imported2'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./Imported2'));
  } else {
    root.Imported1 = factory(root.KaitaiStream, root.Imported2);
  }
}(this, function (KaitaiStream, Imported2) {
var Imported1 = (function() {
  function Imported1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Imported1.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new Imported2(this._io, this, null);
  }

  return Imported1;
})();
return Imported1;
}));

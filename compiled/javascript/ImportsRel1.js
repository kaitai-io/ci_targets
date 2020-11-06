// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './Imported1'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./Imported1'));
  } else {
    root.ImportsRel1 = factory(root.KaitaiStream, root.Imported1);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, Imported1) {
var ImportsRel1 = (function() {
  function ImportsRel1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsRel1.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new Imported1(this._io, this, null);
  }

  return ImportsRel1;
})();
return ImportsRel1;
}));

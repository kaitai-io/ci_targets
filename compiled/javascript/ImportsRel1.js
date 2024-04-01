// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './Imported1'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./Imported1'));
  } else {
    factory(root.ImportsRel1 || (root.ImportsRel1 = {}), root.KaitaiStream, root.Imported1 || (root.Imported1 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsRel1_, KaitaiStream, Imported1_) {
var ImportsRel1 = (function() {
  function ImportsRel1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsRel1.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = new Imported1_.Imported1(this._io, null, null);
  }

  return ImportsRel1;
})();
ImportsRel1_.ImportsRel1 = ImportsRel1;
});

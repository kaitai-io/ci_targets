// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ImportsCircularB'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ImportsCircularB'));
  } else {
    root.ImportsCircularA = factory(root.KaitaiStream, root.ImportsCircularB);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, ImportsCircularB) {
var ImportsCircularA = (function() {
  function ImportsCircularA(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCircularA.prototype._read = function() {
    this.code = this._io.readU1();
    this.two = new ImportsCircularB(this._io, this, null);
  }

  return ImportsCircularA;
})();
return ImportsCircularA;
}));

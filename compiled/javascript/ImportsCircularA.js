// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ImportsCircularB'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ImportsCircularB'));
  } else {
    factory(root.ImportsCircularA || (root.ImportsCircularA = {}), root.KaitaiStream, root.ImportsCircularB || (root.ImportsCircularB = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsCircularA_, KaitaiStream, ImportsCircularB_) {
var ImportsCircularA = (function() {
  function ImportsCircularA(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCircularA.prototype._read = function() {
    this.code = this._io.readU1();
    this.two = new ImportsCircularB_.ImportsCircularB(this._io, this, null);
  }

  return ImportsCircularA;
})();
ImportsCircularA_.ImportsCircularA = ImportsCircularA;
});

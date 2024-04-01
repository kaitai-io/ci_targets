// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ImportsCircularA'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ImportsCircularA'));
  } else {
    factory(root.ImportsCircularB || (root.ImportsCircularB = {}), root.KaitaiStream, root.ImportsCircularA || (root.ImportsCircularA = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsCircularB_, KaitaiStream, ImportsCircularA_) {
var ImportsCircularB = (function() {
  function ImportsCircularB(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCircularB.prototype._read = function() {
    this.initial = this._io.readU1();
    if (this.initial == 65) {
      this.backRef = new ImportsCircularA_.ImportsCircularA(this._io, null, null);
    }
  }

  return ImportsCircularB;
})();
ImportsCircularB_.ImportsCircularB = ImportsCircularB;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './ImportsCircularA'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./ImportsCircularA'));
  } else {
    root.ImportsCircularB = factory(root.KaitaiStream, root.ImportsCircularA);
  }
}(this, function (KaitaiStream, ImportsCircularA) {
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
      this.backRef = new ImportsCircularA(this._io, this, null);
    }
  }

  return ImportsCircularB;
})();
return ImportsCircularB;
}));

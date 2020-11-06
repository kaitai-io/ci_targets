// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './VlqBase128Le'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./VlqBase128Le'));
  } else {
    root.ImportsAbs = factory(root.KaitaiStream, root.VlqBase128Le);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, VlqBase128Le) {
var ImportsAbs = (function() {
  function ImportsAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbs.prototype._read = function() {
    this.len = new VlqBase128Le(this._io, this, null);
    this.body = this._io.readBytes(this.len.value);
  }

  return ImportsAbs;
})();
return ImportsAbs;
}));

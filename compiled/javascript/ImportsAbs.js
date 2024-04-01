// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './VlqBase128Le'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./VlqBase128Le'));
  } else {
    factory(root.ImportsAbs || (root.ImportsAbs = {}), root.KaitaiStream, root.VlqBase128Le || (root.VlqBase128Le = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsAbs_, KaitaiStream, VlqBase128Le_) {
var ImportsAbs = (function() {
  function ImportsAbs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsAbs.prototype._read = function() {
    this.len = new VlqBase128Le_.VlqBase128Le(this._io, null, null);
    this.body = this._io.readBytes(this.len.value);
  }

  return ImportsAbs;
})();
ImportsAbs_.ImportsAbs = ImportsAbs;
});

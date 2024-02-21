// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.MetaTags || (root.MetaTags = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (MetaTags_, KaitaiStream) {
var MetaTags = (function() {
  function MetaTags(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  MetaTags.prototype._read = function() {
  }

  return MetaTags;
})();
MetaTags_.MetaTags = MetaTags;
});

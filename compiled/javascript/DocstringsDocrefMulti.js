// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.DocstringsDocrefMulti || (root.DocstringsDocrefMulti = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (DocstringsDocrefMulti_, KaitaiStream) {
/**
 * Sample docstring
 * @see Plain text description of doc ref, page 42
 * @see {@link http://www.example.com/some/path/?even_with=query&more=2|Source}
 * @see {@link http://www.example.com/three|Documentation name}
 */

var DocstringsDocrefMulti = (function() {
  function DocstringsDocrefMulti(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DocstringsDocrefMulti.prototype._read = function() {
  }

  return DocstringsDocrefMulti;
})();
DocstringsDocrefMulti_.DocstringsDocrefMulti = DocstringsDocrefMulti;
});

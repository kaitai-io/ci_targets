// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStruct3 || (root.TermStruct3 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStruct3_, KaitaiStream) {
var TermStruct3 = (function() {
  function TermStruct3(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStruct3.prototype._read = function() {
    this._raw_s1 = this._io.readBytesTerm(124, false, false, true);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new BytesWrapper(_io__raw_s1, this, this._root);
    this._raw_s2 = this._io.readBytesTerm(64, false, false, true);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new BytesWrapper(_io__raw_s2, this, this._root);
    this._raw_s3 = this._io.readBytesTerm(64, false, true, true);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new BytesWrapper(_io__raw_s3, this, this._root);
  }

  var BytesWrapper = TermStruct3.BytesWrapper = (function() {
    function BytesWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BytesWrapper.prototype._read = function() {
      this.value = this._io.readBytesFull();
    }

    return BytesWrapper;
  })();

  return TermStruct3;
})();
TermStruct3_.TermStruct3 = TermStruct3;
});

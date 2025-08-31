// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatNTermStruct || (root.RepeatNTermStruct = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatNTermStruct_, KaitaiStream) {
var RepeatNTermStruct = (function() {
  function RepeatNTermStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatNTermStruct.prototype._read = function() {
    this._raw_records1 = [];
    this.records1 = [];
    for (var i = 0; i < 2; i++) {
      this._raw_records1.push(this._io.readBytesTerm(170, false, true, true));
      var _io__raw_records1 = new KaitaiStream(this._raw_records1[i]);
      this.records1.push(new BytesWrapper(_io__raw_records1, this, this._root));
    }
    this._raw_records2 = [];
    this.records2 = [];
    for (var i = 0; i < 2; i++) {
      this._raw_records2.push(this._io.readBytesTerm(170, true, true, true));
      var _io__raw_records2 = new KaitaiStream(this._raw_records2[i]);
      this.records2.push(new BytesWrapper(_io__raw_records2, this, this._root));
    }
    this._raw_records3 = [];
    this.records3 = [];
    for (var i = 0; i < 2; i++) {
      this._raw_records3.push(this._io.readBytesTerm(85, false, false, true));
      var _io__raw_records3 = new KaitaiStream(this._raw_records3[i]);
      this.records3.push(new BytesWrapper(_io__raw_records3, this, this._root));
    }
  }

  var BytesWrapper = RepeatNTermStruct.BytesWrapper = (function() {
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

  return RepeatNTermStruct;
})();
RepeatNTermStruct_.RepeatNTermStruct = RepeatNTermStruct;
});

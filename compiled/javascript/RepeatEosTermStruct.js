// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatEosTermStruct || (root.RepeatEosTermStruct = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatEosTermStruct_, KaitaiStream) {
var RepeatEosTermStruct = (function() {
  function RepeatEosTermStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatEosTermStruct.prototype._read = function() {
    this._raw_records = [];
    this.records = [];
    var i = 0;
    while (!this._io.isEof()) {
      this._raw_records.push(this._io.readBytesTerm(178, true, true, true));
      var _io__raw_records = new KaitaiStream(this._raw_records[this._raw_records.length - 1]);
      this.records.push(new BytesWrapper(_io__raw_records, this, this._root));
      i++;
    }
  }

  var BytesWrapper = RepeatEosTermStruct.BytesWrapper = (function() {
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

  return RepeatEosTermStruct;
})();
RepeatEosTermStruct_.RepeatEosTermStruct = RepeatEosTermStruct;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilTermStruct || (root.RepeatUntilTermStruct = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilTermStruct_, KaitaiStream) {
var RepeatUntilTermStruct = (function() {
  function RepeatUntilTermStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilTermStruct.prototype._read = function() {
    this._raw_records1 = [];
    this.records1 = [];
    var i = 0;
    do {
      var _buf = this._io.readBytesTerm(170, false, true, true);
      this._raw_records1.push(_buf);
      var _io__raw_records1 = new KaitaiStream(this._raw_records1[this._raw_records1.length - 1]);
      var _ = new BytesWrapper(_io__raw_records1, this, this._root);
      this.records1.push(_);
      i++;
    } while (!(_.value.length == 0));
    this._raw_records2 = [];
    this.records2 = [];
    var i = 0;
    do {
      var _buf = this._io.readBytesTerm(170, true, true, true);
      this._raw_records2.push(_buf);
      var _io__raw_records2 = new KaitaiStream(this._raw_records2[this._raw_records2.length - 1]);
      var _ = new BytesWrapper(_io__raw_records2, this, this._root);
      this.records2.push(_);
      i++;
    } while (!((KaitaiStream.byteArrayCompare(_.value, new Uint8Array([170])) != 0)));
    this._raw_records3 = [];
    this.records3 = [];
    var i = 0;
    do {
      var _buf = this._io.readBytesTerm(85, false, false, true);
      this._raw_records3.push(_buf);
      var _io__raw_records3 = new KaitaiStream(this._raw_records3[this._raw_records3.length - 1]);
      var _ = new BytesWrapper(_io__raw_records3, this, this._root);
      this.records3.push(_);
      i++;
    } while (!((KaitaiStream.byteArrayCompare(_.value, this.records1[this.records1.length - 1].value) == 0)));
  }

  var BytesWrapper = RepeatUntilTermStruct.BytesWrapper = (function() {
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

  return RepeatUntilTermStruct;
})();
RepeatUntilTermStruct_.RepeatUntilTermStruct = RepeatUntilTermStruct;
});

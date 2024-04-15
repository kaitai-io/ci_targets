// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.RepeatUntilSized || (root.RepeatUntilSized = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (RepeatUntilSized_, KaitaiStream) {
var RepeatUntilSized = (function() {
  function RepeatUntilSized(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilSized.prototype._read = function() {
    this._raw_records = [];
    this.records = [];
    var i = 0;
    do {
      var _buf = this._io.readBytes(5);
      this._raw_records.push(_buf);
      var _io__raw_records = new KaitaiStream(this._raw_records[this._raw_records.length - 1]);
      var _ = new Record(_io__raw_records, this, this._root);
      this.records.push(_);
      i++;
    } while (!(_.marker == 170));
  }

  var Record = RepeatUntilSized.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Record.prototype._read = function() {
      this.marker = this._io.readU1();
      this.body = this._io.readU4le();
    }

    return Record;
  })();

  return RepeatUntilSized;
})();
RepeatUntilSized_.RepeatUntilSized = RepeatUntilSized;
});

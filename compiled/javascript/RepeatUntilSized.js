// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatUntilSized = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
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
      this._raw_records = this._io.readBytes(5);
      var _io__raw_records = new KaitaiStream(this._raw_records);
      var _ = new Record(_io__raw_records, this, this._root);
      this.records.push(_);
      i++;
    } while (!(_.marker == 170));
  }

  var Record = RepeatUntilSized.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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
return RepeatUntilSized;
}));

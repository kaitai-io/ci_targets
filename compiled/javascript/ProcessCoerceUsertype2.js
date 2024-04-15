// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessCoerceUsertype2 || (root.ProcessCoerceUsertype2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessCoerceUsertype2_, KaitaiStream) {
var ProcessCoerceUsertype2 = (function() {
  function ProcessCoerceUsertype2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCoerceUsertype2.prototype._read = function() {
    this.records = [];
    for (var i = 0; i < 2; i++) {
      this.records.push(new Record(this._io, this, this._root));
    }
  }

  var Foo = ProcessCoerceUsertype2.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Foo.prototype._read = function() {
      this.value = this._io.readU4le();
    }

    return Foo;
  })();

  var Record = ProcessCoerceUsertype2.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Record.prototype._read = function() {
      this.flag = this._io.readU1();
      if (this.flag == 0) {
        this.bufUnproc = new Foo(this._io, this, this._root);
      }
      if (this.flag != 0) {
        this._raw__raw_bufProc = this._io.readBytes(4);
        this._raw_bufProc = KaitaiStream.processXorOne(this._raw__raw_bufProc, 170);
        var _io__raw_bufProc = new KaitaiStream(this._raw_bufProc);
        this.bufProc = new Foo(_io__raw_bufProc, this, this._root);
      }
    }
    Object.defineProperty(Record.prototype, 'buf', {
      get: function() {
        if (this._m_buf !== undefined)
          return this._m_buf;
        this._m_buf = (this.flag == 0 ? this.bufUnproc : this.bufProc);
        return this._m_buf;
      }
    });

    return Record;
  })();

  return ProcessCoerceUsertype2;
})();
ProcessCoerceUsertype2_.ProcessCoerceUsertype2 = ProcessCoerceUsertype2;
});

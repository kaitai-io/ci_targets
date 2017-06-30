// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ProcessCoerceUsertype2 = (function() {
  function ProcessCoerceUsertype2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCoerceUsertype2.prototype._read = function() {
    this.records = new Array(2);
    for (var i = 0; i < 2; i++) {
      this.records[i] = new Record(this._io, this, this._root);
    }
  }

  var Record = ProcessCoerceUsertype2.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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

  var Foo = ProcessCoerceUsertype2.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Foo.prototype._read = function() {
      this.value = this._io.readU4le();
    }

    return Foo;
  })();

  return ProcessCoerceUsertype2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ProcessCoerceUsertype2', [], function() {
    return ProcessCoerceUsertype2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ProcessCoerceUsertype2;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessCoerceBytes = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var ProcessCoerceBytes = (function() {
  function ProcessCoerceBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCoerceBytes.prototype._read = function() {
    this.records = new Array(2);
    for (var i = 0; i < 2; i++) {
      this.records[i] = new Record(this._io, this, this._root);
    }
  }

  var Record = ProcessCoerceBytes.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Record.prototype._read = function() {
      this.flag = this._io.readU1();
      if (this.flag == 0) {
        this.bufUnproc = this._io.readBytes(4);
      }
      if (this.flag != 0) {
        this._raw_bufProc = this._io.readBytes(4);
        this.bufProc = KaitaiStream.processXorOne(this._raw_bufProc, 170);
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

  return ProcessCoerceBytes;
})();
return ProcessCoerceBytes;
}));

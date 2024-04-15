// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessCoerceSwitch || (root.ProcessCoerceSwitch = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessCoerceSwitch_, KaitaiStream) {
var ProcessCoerceSwitch = (function() {
  function ProcessCoerceSwitch(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCoerceSwitch.prototype._read = function() {
    this.bufType = this._io.readU1();
    this.flag = this._io.readU1();
    if (this.flag == 0) {
      switch (this.bufType) {
      case 0:
        this._raw_bufUnproc = this._io.readBytes(4);
        var _io__raw_bufUnproc = new KaitaiStream(this._raw_bufUnproc);
        this.bufUnproc = new Foo(_io__raw_bufUnproc, this, this._root);
        break;
      default:
        this.bufUnproc = this._io.readBytes(4);
        break;
      }
    }
    if (this.flag != 0) {
      switch (this.bufType) {
      case 0:
        this._raw__raw_bufProc = this._io.readBytes(4);
        this._raw_bufProc = KaitaiStream.processXorOne(this._raw__raw_bufProc, 170);
        var _io__raw_bufProc = new KaitaiStream(this._raw_bufProc);
        this.bufProc = new Foo(_io__raw_bufProc, this, this._root);
        break;
      default:
        this._raw_bufProc = this._io.readBytes(4);
        this.bufProc = KaitaiStream.processXorOne(this._raw_bufProc, 170);
        break;
      }
    }
  }

  var Foo = ProcessCoerceSwitch.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Foo.prototype._read = function() {
      this.bar = this._io.readBytes(4);
    }

    return Foo;
  })();
  Object.defineProperty(ProcessCoerceSwitch.prototype, 'buf', {
    get: function() {
      if (this._m_buf !== undefined)
        return this._m_buf;
      this._m_buf = (this.flag == 0 ? this.bufUnproc : this.bufProc);
      return this._m_buf;
    }
  });

  return ProcessCoerceSwitch;
})();
ProcessCoerceSwitch_.ProcessCoerceSwitch = ProcessCoerceSwitch;
});

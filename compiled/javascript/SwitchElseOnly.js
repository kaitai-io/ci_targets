// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.SwitchElseOnly = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var SwitchElseOnly = (function() {
  function SwitchElseOnly(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchElseOnly.prototype._read = function() {
    this.opcode = this._io.readS1();
    switch (this.opcode) {
    default:
      this.primByte = this._io.readS1();
      break;
    }
    switch (this.opcode) {
    default:
      this.struct = new Data(this._io, this, this._root);
      break;
    }
    switch (this.opcode) {
    default:
      this._raw_structSized = this._io.readBytes(4);
      var _io__raw_structSized = new KaitaiStream(this._raw_structSized);
      this.structSized = new Data(_io__raw_structSized, this, this._root);
      break;
    }
  }

  var Data = SwitchElseOnly.Data = (function() {
    function Data(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Data.prototype._read = function() {
      this.value = this._io.readBytes(4);
    }

    return Data;
  })();

  return SwitchElseOnly;
})();
return SwitchElseOnly;
}));

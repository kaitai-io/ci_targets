// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchElseOnly || (root.SwitchElseOnly = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchElseOnly_, KaitaiStream) {
var SwitchElseOnly = (function() {
  function SwitchElseOnly(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchElseOnly.prototype._read = function() {
    this.opcode = this._io.readS1();
    this.primByte = this._io.readS1();
    this.indicator = this._io.readBytes(4);
    this.ut = new Data(this._io, this, this._root);
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
SwitchElseOnly_.SwitchElseOnly = SwitchElseOnly;
});

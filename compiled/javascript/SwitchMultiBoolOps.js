// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchMultiBoolOps || (root.SwitchMultiBoolOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchMultiBoolOps_, KaitaiStream) {
var SwitchMultiBoolOps = (function() {
  function SwitchMultiBoolOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchMultiBoolOps.prototype._read = function() {
    this.opcodes = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
      i++;
    }
  }

  var Opcode = SwitchMultiBoolOps.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Opcode.prototype._read = function() {
      this.code = this._io.readU1();
      switch (( ((this.code > 0) && (this.code <= 8) && ((this.code != 10 ? true : false)))  ? this.code : 0)) {
      case 1:
        this.body = this._io.readU1();
        break;
      case 2:
        this.body = this._io.readU2le();
        break;
      case 4:
        this.body = this._io.readU4le();
        break;
      case 8:
        this.body = this._io.readU8le();
        break;
      }
    }

    return Opcode;
  })();

  return SwitchMultiBoolOps;
})();
SwitchMultiBoolOps_.SwitchMultiBoolOps = SwitchMultiBoolOps;
});

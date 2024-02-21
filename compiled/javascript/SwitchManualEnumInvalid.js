// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchManualEnumInvalid || (root.SwitchManualEnumInvalid = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchManualEnumInvalid_, KaitaiStream) {
var SwitchManualEnumInvalid = (function() {
  function SwitchManualEnumInvalid(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchManualEnumInvalid.prototype._read = function() {
    this.opcodes = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
      i++;
    }
  }

  var Opcode = SwitchManualEnumInvalid.Opcode = (function() {
    Opcode.CodeEnum = Object.freeze({
      INTVAL: 73,
      STRVAL: 83,

      73: "INTVAL",
      83: "STRVAL",
    });

    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Opcode.prototype._read = function() {
      this.code = this._io.readU1();
      switch (this.code) {
      case SwitchManualEnumInvalid.Opcode.CodeEnum.INTVAL:
        this.body = new Intval(this._io, this, this._root);
        break;
      case SwitchManualEnumInvalid.Opcode.CodeEnum.STRVAL:
        this.body = new Strval(this._io, this, this._root);
        break;
      }
    }

    var Intval = Opcode.Intval = (function() {
      function Intval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Intval.prototype._read = function() {
        this.value = this._io.readU1();
      }

      return Intval;
    })();

    var Strval = Opcode.Strval = (function() {
      function Strval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Strval.prototype._read = function() {
        this.value = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "ASCII");
      }

      return Strval;
    })();

    return Opcode;
  })();

  return SwitchManualEnumInvalid;
})();
SwitchManualEnumInvalid_.SwitchManualEnumInvalid = SwitchManualEnumInvalid;
});

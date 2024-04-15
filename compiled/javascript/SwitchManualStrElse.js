// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchManualStrElse || (root.SwitchManualStrElse = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchManualStrElse_, KaitaiStream) {
var SwitchManualStrElse = (function() {
  function SwitchManualStrElse(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchManualStrElse.prototype._read = function() {
    this.opcodes = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
      i++;
    }
  }

  var Opcode = SwitchManualStrElse.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Opcode.prototype._read = function() {
      this.code = KaitaiStream.bytesToStr(this._io.readBytes(1), "ASCII");
      switch (this.code) {
      case "I":
        this.body = new Intval(this._io, this, this._root);
        break;
      case "S":
        this.body = new Strval(this._io, this, this._root);
        break;
      default:
        this.body = new Noneval(this._io, this, this._root);
        break;
      }
    }

    var Intval = Opcode.Intval = (function() {
      function Intval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Intval.prototype._read = function() {
        this.value = this._io.readU1();
      }

      return Intval;
    })();

    var Noneval = Opcode.Noneval = (function() {
      function Noneval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Noneval.prototype._read = function() {
        this.filler = this._io.readU4le();
      }

      return Noneval;
    })();

    var Strval = Opcode.Strval = (function() {
      function Strval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Strval.prototype._read = function() {
        this.value = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "ASCII");
      }

      return Strval;
    })();

    return Opcode;
  })();

  return SwitchManualStrElse;
})();
SwitchManualStrElse_.SwitchManualStrElse = SwitchManualStrElse;
});

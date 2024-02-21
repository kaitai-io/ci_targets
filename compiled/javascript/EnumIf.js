// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EnumIf || (root.EnumIf = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EnumIf_, KaitaiStream) {
var EnumIf = (function() {
  EnumIf.Opcodes = Object.freeze({
    A_STRING: 83,
    A_TUPLE: 84,

    83: "A_STRING",
    84: "A_TUPLE",
  });

  function EnumIf(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumIf.prototype._read = function() {
    this.op1 = new Operation(this._io, this, this._root);
    this.op2 = new Operation(this._io, this, this._root);
    this.op3 = new Operation(this._io, this, this._root);
  }

  var Operation = EnumIf.Operation = (function() {
    function Operation(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Operation.prototype._read = function() {
      this.opcode = this._io.readU1();
      if (this.opcode == EnumIf.Opcodes.A_TUPLE) {
        this.argTuple = new ArgTuple(this._io, this, this._root);
      }
      if (this.opcode == EnumIf.Opcodes.A_STRING) {
        this.argStr = new ArgStr(this._io, this, this._root);
      }
    }

    return Operation;
  })();

  var ArgTuple = EnumIf.ArgTuple = (function() {
    function ArgTuple(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ArgTuple.prototype._read = function() {
      this.num1 = this._io.readU1();
      this.num2 = this._io.readU1();
    }

    return ArgTuple;
  })();

  var ArgStr = EnumIf.ArgStr = (function() {
    function ArgStr(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ArgStr.prototype._read = function() {
      this.len = this._io.readU1();
      this.str = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    }

    return ArgStr;
  })();

  return EnumIf;
})();
EnumIf_.EnumIf = EnumIf;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

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

    this.op1 = new Operation(this._io, this, this._root);
    this.op2 = new Operation(this._io, this, this._root);
    this.op3 = new Operation(this._io, this, this._root);
  }

  var Operation = EnumIf.Operation = (function() {
    function Operation(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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

      this.len = this._io.readU1();
      this.str = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    }

    return ArgStr;
  })();

  return EnumIf;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('EnumIf', [], function() {
    return EnumIf;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = EnumIf;
}

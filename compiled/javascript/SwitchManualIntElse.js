// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var SwitchManualIntElse = (function() {
  function SwitchManualIntElse(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.opcodes = [];
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
    }
  }

  var Opcode = SwitchManualIntElse.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.code = this._io.readU1();
      switch (this.code) {
      case 73:
        this.body = new Intval(this._io, this, this._root);
        break;
      case 83:
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
        this._root = _root || this;

        this.value = this._io.readU1();
      }

      return Intval;
    })();

    var Strval = Opcode.Strval = (function() {
      function Strval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.value = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "ASCII");
      }

      return Strval;
    })();

    var Noneval = Opcode.Noneval = (function() {
      function Noneval(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.filler = this._io.readU4le();
      }

      return Noneval;
    })();

    return Opcode;
  })();

  return SwitchManualIntElse;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('SwitchManualIntElse', [], function() {
    return SwitchManualIntElse;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = SwitchManualIntElse;
}

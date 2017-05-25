// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var SwitchIntegers = (function() {
  function SwitchIntegers(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchIntegers.prototype._read = function() {
    this.opcodes = [];
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
    }
  }

  var Opcode = SwitchIntegers.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Opcode.prototype._read = function() {
      this.code = this._io.readU1();
      switch (this.code) {
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

  return SwitchIntegers;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('SwitchIntegers', [], function() {
    return SwitchIntegers;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = SwitchIntegers;
}

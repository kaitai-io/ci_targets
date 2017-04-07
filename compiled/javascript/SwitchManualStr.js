// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var SwitchManualStr = (function() {
  function SwitchManualStr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.opcodes = [];
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
    }
  }

  var Opcode = SwitchManualStr.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.code = KaitaiStream.bytesToStr(this._io.readBytes(1), "ASCII");
      switch (this.code) {
      case "I":
        this.body = new Intval(this._io, this, this._root);
        break;
      case "S":
        this.body = new Strval(this._io, this, this._root);
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

    return Opcode;
  })();

  return SwitchManualStr;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('SwitchManualStr', [], function() {
    return SwitchManualStr;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = SwitchManualStr;
}

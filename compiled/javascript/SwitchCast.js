// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.SwitchCast = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var SwitchCast = (function() {
  function SwitchCast(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchCast.prototype._read = function() {
    this.opcodes = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
      i++;
    }
  }

  var Opcode = SwitchCast.Opcode = (function() {
    function Opcode(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Opcode.prototype._read = function() {
      this.code = this._io.readU1();
      switch (this.code) {
      case 73:
        this.body = new Intval(this._io, this, this._root);
        break;
      case 83:
        this.body = new Strval(this._io, this, this._root);
        break;
      }
    }

    return Opcode;
  })();

  var Intval = SwitchCast.Intval = (function() {
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

  var Strval = SwitchCast.Strval = (function() {
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
  Object.defineProperty(SwitchCast.prototype, 'firstObj', {
    get: function() {
      if (this._m_firstObj !== undefined)
        return this._m_firstObj;
      this._m_firstObj = this.opcodes[0].body;
      return this._m_firstObj;
    }
  });
  Object.defineProperty(SwitchCast.prototype, 'secondVal', {
    get: function() {
      if (this._m_secondVal !== undefined)
        return this._m_secondVal;
      this._m_secondVal = this.opcodes[1].body.value;
      return this._m_secondVal;
    }
  });
  Object.defineProperty(SwitchCast.prototype, 'errCast', {
    get: function() {
      if (this._m_errCast !== undefined)
        return this._m_errCast;
      this._m_errCast = this.opcodes[2].body;
      return this._m_errCast;
    }
  });

  return SwitchCast;
})();
return SwitchCast;
}));

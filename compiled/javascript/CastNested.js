// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.CastNested = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var CastNested = (function() {
  function CastNested(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CastNested.prototype._read = function() {
    this.opcodes = [];
    var i = 0;
    while (!this._io.isEof()) {
      this.opcodes.push(new Opcode(this._io, this, this._root));
      i++;
    }
  }

  var Opcode = CastNested.Opcode = (function() {
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
  Object.defineProperty(CastNested.prototype, 'opcodes0Str', {
    get: function() {
      if (this._m_opcodes0Str !== undefined)
        return this._m_opcodes0Str;
      this._m_opcodes0Str = this.opcodes[0].body;
      return this._m_opcodes0Str;
    }
  });
  Object.defineProperty(CastNested.prototype, 'opcodes0StrValue', {
    get: function() {
      if (this._m_opcodes0StrValue !== undefined)
        return this._m_opcodes0StrValue;
      this._m_opcodes0StrValue = this.opcodes[0].body.value;
      return this._m_opcodes0StrValue;
    }
  });
  Object.defineProperty(CastNested.prototype, 'opcodes1Int', {
    get: function() {
      if (this._m_opcodes1Int !== undefined)
        return this._m_opcodes1Int;
      this._m_opcodes1Int = this.opcodes[1].body;
      return this._m_opcodes1Int;
    }
  });
  Object.defineProperty(CastNested.prototype, 'opcodes1IntValue', {
    get: function() {
      if (this._m_opcodes1IntValue !== undefined)
        return this._m_opcodes1IntValue;
      this._m_opcodes1IntValue = this.opcodes[1].body.value;
      return this._m_opcodes1IntValue;
    }
  });

  return CastNested;
})();
return CastNested;
}));

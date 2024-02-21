// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprBits || (root.ExprBits = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprBits_, KaitaiStream) {
var ExprBits = (function() {
  ExprBits.Items = Object.freeze({
    FOO: 1,
    BAR: 2,

    1: "FOO",
    2: "BAR",
  });

  function ExprBits(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprBits.prototype._read = function() {
    this.enumSeq = this._io.readBitsIntBe(2);
    this.a = this._io.readBitsIntBe(3);
    this._io.alignToByte();
    this.byteSize = this._io.readBytes(this.a);
    this.repeatExpr = [];
    for (var i = 0; i < this.a; i++) {
      this.repeatExpr.push(this._io.readS1());
    }
    switch (this.a) {
    case 2:
      this.switchOnType = this._io.readS1();
      break;
    }
    this.switchOnEndian = new EndianSwitch(this._io, this, this._root);
  }

  var EndianSwitch = ExprBits.EndianSwitch = (function() {
    function EndianSwitch(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    EndianSwitch.prototype._read = function() {
      switch (this._parent.a) {
      case 1:
        this._is_le = true;
        break;
      case 2:
        this._is_le = false;
        break;
      }

      if (this._is_le === true) {
        this._readLE();
      } else if (this._is_le === false) {
        this._readBE();
      } else {
        throw new KaitaiStream.UndecidedEndiannessError();
      }
    }
    EndianSwitch.prototype._readLE = function() {
      this.foo = this._io.readS2le();
    }
    EndianSwitch.prototype._readBE = function() {
      this.foo = this._io.readS2be();
    }

    return EndianSwitch;
  })();
  Object.defineProperty(ExprBits.prototype, 'enumInst', {
    get: function() {
      if (this._m_enumInst !== undefined)
        return this._m_enumInst;
      this._m_enumInst = this.a;
      return this._m_enumInst;
    }
  });
  Object.defineProperty(ExprBits.prototype, 'instPos', {
    get: function() {
      if (this._m_instPos !== undefined)
        return this._m_instPos;
      var _pos = this._io.pos;
      this._io.seek(this.a);
      this._m_instPos = this._io.readS1();
      this._io.seek(_pos);
      return this._m_instPos;
    }
  });

  return ExprBits;
})();
ExprBits_.ExprBits = ExprBits;
});

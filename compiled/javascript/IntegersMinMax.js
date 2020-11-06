// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IntegersMinMax = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var IntegersMinMax = (function() {
  function IntegersMinMax(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IntegersMinMax.prototype._read = function() {
    this.unsignedMin = new Unsigned(this._io, this, this._root);
    this.unsignedMax = new Unsigned(this._io, this, this._root);
    this.signedMin = new Signed(this._io, this, this._root);
    this.signedMax = new Signed(this._io, this, this._root);
  }

  var Unsigned = IntegersMinMax.Unsigned = (function() {
    function Unsigned(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Unsigned.prototype._read = function() {
      this.u1 = this._io.readU1();
      this.u2le = this._io.readU2le();
      this.u4le = this._io.readU4le();
      this.u8le = this._io.readU8le();
      this.u2be = this._io.readU2be();
      this.u4be = this._io.readU4be();
      this.u8be = this._io.readU8be();
    }

    return Unsigned;
  })();

  var Signed = IntegersMinMax.Signed = (function() {
    function Signed(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Signed.prototype._read = function() {
      this.s1 = this._io.readS1();
      this.s2le = this._io.readS2le();
      this.s4le = this._io.readS4le();
      this.s8le = this._io.readS8le();
      this.s2be = this._io.readS2be();
      this.s4be = this._io.readS4be();
      this.s8be = this._io.readS8be();
    }

    return Signed;
  })();

  return IntegersMinMax;
})();
return IntegersMinMax;
}));

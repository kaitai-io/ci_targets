// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IntegersDoubleOverflow = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var IntegersDoubleOverflow = (function() {
  function IntegersDoubleOverflow(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IntegersDoubleOverflow.prototype._read = function() {
    this.signedSafeMinBe = this._io.readS8be();
    this.signedSafeMinLe = this._io.readS8le();
    this.signedSafeMaxBe = this._io.readS8be();
    this.signedSafeMaxLe = this._io.readS8le();
    this.signedUnsafeNegBe = this._io.readS8be();
    this.signedUnsafeNegLe = this._io.readS8le();
    this.signedUnsafePosBe = this._io.readS8be();
    this.signedUnsafePosLe = this._io.readS8le();
  }
  Object.defineProperty(IntegersDoubleOverflow.prototype, 'unsignedSafeMaxBe', {
    get: function() {
      if (this._m_unsignedSafeMaxBe !== undefined)
        return this._m_unsignedSafeMaxBe;
      var _pos = this._io.pos;
      this._io.seek(16);
      this._m_unsignedSafeMaxBe = this._io.readU8be();
      this._io.seek(_pos);
      return this._m_unsignedSafeMaxBe;
    }
  });
  Object.defineProperty(IntegersDoubleOverflow.prototype, 'unsignedSafeMaxLe', {
    get: function() {
      if (this._m_unsignedSafeMaxLe !== undefined)
        return this._m_unsignedSafeMaxLe;
      var _pos = this._io.pos;
      this._io.seek(24);
      this._m_unsignedSafeMaxLe = this._io.readU8le();
      this._io.seek(_pos);
      return this._m_unsignedSafeMaxLe;
    }
  });
  Object.defineProperty(IntegersDoubleOverflow.prototype, 'unsignedUnsafePosBe', {
    get: function() {
      if (this._m_unsignedUnsafePosBe !== undefined)
        return this._m_unsignedUnsafePosBe;
      var _pos = this._io.pos;
      this._io.seek(48);
      this._m_unsignedUnsafePosBe = this._io.readU8be();
      this._io.seek(_pos);
      return this._m_unsignedUnsafePosBe;
    }
  });
  Object.defineProperty(IntegersDoubleOverflow.prototype, 'unsignedUnsafePosLe', {
    get: function() {
      if (this._m_unsignedUnsafePosLe !== undefined)
        return this._m_unsignedUnsafePosLe;
      var _pos = this._io.pos;
      this._io.seek(56);
      this._m_unsignedUnsafePosLe = this._io.readU8le();
      this._io.seek(_pos);
      return this._m_unsignedUnsafePosLe;
    }
  });

  return IntegersDoubleOverflow;
})();
return IntegersDoubleOverflow;
}));

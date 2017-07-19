// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var FixedStruct = (function() {
  function FixedStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  FixedStruct.prototype._read = function() {
  }

  var Header = FixedStruct.Header = (function() {
    function Header(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Header.prototype._read = function() {
      this.magic1 = this._io.ensureFixedContents([80, 65, 67, 75, 45, 49]);
      this.uint8 = this._io.readU1();
      this.sint8 = this._io.readS1();
      this.magicUint = this._io.ensureFixedContents([80, 65, 67, 75, 45, 85, 45, 68, 69, 70]);
      this.uint16 = this._io.readU2le();
      this.uint32 = this._io.readU4le();
      this.uint64 = this._io.readU8le();
      this.magicSint = this._io.ensureFixedContents([80, 65, 67, 75, 45, 83, 45, 68, 69, 70]);
      this.sint16 = this._io.readS2le();
      this.sint32 = this._io.readS4le();
      this.sint64 = this._io.readS8le();
      this.magicUintLe = this._io.ensureFixedContents([80, 65, 67, 75, 45, 85, 45, 76, 69]);
      this.uint16le = this._io.readU2le();
      this.uint32le = this._io.readU4le();
      this.uint64le = this._io.readU8le();
      this.magicSintLe = this._io.ensureFixedContents([80, 65, 67, 75, 45, 83, 45, 76, 69]);
      this.sint16le = this._io.readS2le();
      this.sint32le = this._io.readS4le();
      this.sint64le = this._io.readS8le();
      this.magicUintBe = this._io.ensureFixedContents([80, 65, 67, 75, 45, 85, 45, 66, 69]);
      this.uint16be = this._io.readU2be();
      this.uint32be = this._io.readU4be();
      this.uint64be = this._io.readU8be();
      this.magicSintBe = this._io.ensureFixedContents([80, 65, 67, 75, 45, 83, 45, 66, 69]);
      this.sint16be = this._io.readS2be();
      this.sint32be = this._io.readS4be();
      this.sint64be = this._io.readS8be();
    }

    return Header;
  })();
  Object.defineProperty(FixedStruct.prototype, 'hdr', {
    get: function() {
      if (this._m_hdr !== undefined)
        return this._m_hdr;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_hdr = new Header(this._io, this, this._root);
      this._io.seek(_pos);
      return this._m_hdr;
    }
  });

  return FixedStruct;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('FixedStruct', [], function() {
    return FixedStruct;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = FixedStruct;
}

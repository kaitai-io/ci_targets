// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var IfValues = (function() {
  function IfValues(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.codes = new Array(3);
    for (var i = 0; i < 3; i++) {
      this.codes[i] = new Code(this._io, this, this._root);
    }
  }

  var Code = IfValues.Code = (function() {
    function Code(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.opcode = this._io.readU1();
    }
    Object.defineProperty(Code.prototype, 'halfOpcode', {
      get: function() {
        if (this._m_halfOpcode !== undefined)
          return this._m_halfOpcode;
        if (KaitaiStream.mod(this.opcode, 2) == 0) {
          this._m_halfOpcode = Math.floor(this.opcode / 2);
        }
        return this._m_halfOpcode;
      }
    });

    return Code;
  })();

  return IfValues;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('IfValues', [], function() {
    return IfValues;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = IfValues;
}

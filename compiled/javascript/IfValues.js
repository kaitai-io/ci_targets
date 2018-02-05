// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IfValues = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var IfValues = (function() {
  function IfValues(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IfValues.prototype._read = function() {
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

      this._read();
    }
    Code.prototype._read = function() {
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
return IfValues;
}));

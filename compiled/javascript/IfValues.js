// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.IfValues || (root.IfValues = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (IfValues_, KaitaiStream) {
var IfValues = (function() {
  function IfValues(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IfValues.prototype._read = function() {
    this.codes = [];
    for (var i = 0; i < 3; i++) {
      this.codes.push(new Code(this._io, this, this._root));
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
IfValues_.IfValues = IfValues;
});

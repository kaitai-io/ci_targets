// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.CombineEnum = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var CombineEnum = (function() {
  CombineEnum.Animal = Object.freeze({
    PIG: 7,
    HORSE: 12,

    7: "PIG",
    12: "HORSE",
  });

  function CombineEnum(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CombineEnum.prototype._read = function() {
    this.enumU4 = this._io.readU4le();
    this.enumU2 = this._io.readU2le();
  }
  Object.defineProperty(CombineEnum.prototype, 'enumU4U2', {
    get: function() {
      if (this._m_enumU4U2 !== undefined)
        return this._m_enumU4U2;
      this._m_enumU4U2 = (false ? this.enumU4 : this.enumU2);
      return this._m_enumU4U2;
    }
  });

  return CombineEnum;
})();
return CombineEnum;
}));

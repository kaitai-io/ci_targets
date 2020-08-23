// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumToIClassBorder2 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var EnumToIClassBorder2 = (function() {
  function EnumToIClassBorder2(_io, _parent, _root, parent) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this.parent = parent;

    this._read();
  }
  EnumToIClassBorder2.prototype._read = function() {
  }
  Object.defineProperty(EnumToIClassBorder2.prototype, 'isDog', {
    get: function() {
      if (this._m_isDog !== undefined)
        return this._m_isDog;
      this._m_isDog = this.parent.someDog == 4;
      return this._m_isDog;
    }
  });

  return EnumToIClassBorder2;
})();
return EnumToIClassBorder2;
}));

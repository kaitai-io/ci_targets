// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './EnumToIClassBorder1'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./EnumToIClassBorder1'));
  } else {
    factory(root.EnumToIClassBorder2 || (root.EnumToIClassBorder2 = {}), root.KaitaiStream, root.EnumToIClassBorder1 || (root.EnumToIClassBorder1 = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (EnumToIClassBorder2_, KaitaiStream, EnumToIClassBorder1_) {
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
EnumToIClassBorder2_.EnumToIClassBorder2 = EnumToIClassBorder2;
});

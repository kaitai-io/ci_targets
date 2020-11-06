// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.SwitchIntegers2 = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var SwitchIntegers2 = (function() {
  function SwitchIntegers2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchIntegers2.prototype._read = function() {
    this.code = this._io.readU1();
    switch (this.code) {
    case 1:
      this.len = this._io.readU1();
      break;
    case 2:
      this.len = this._io.readU2le();
      break;
    case 4:
      this.len = this._io.readU4le();
      break;
    case 8:
      this.len = this._io.readU8le();
      break;
    }
    this.ham = this._io.readBytes(this.len);
    if (this.len > 3) {
      this.padding = this._io.readU1();
    }
  }
  Object.defineProperty(SwitchIntegers2.prototype, 'lenModStr', {
    get: function() {
      if (this._m_lenModStr !== undefined)
        return this._m_lenModStr;
      this._m_lenModStr = (((this.len * 2) - 1)).toString(10);
      return this._m_lenModStr;
    }
  });

  return SwitchIntegers2;
})();
return SwitchIntegers2;
}));

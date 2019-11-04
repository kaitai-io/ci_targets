// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidFailInst = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ValidFailInst = (function() {
  function ValidFailInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailInst.prototype._read = function() {
    if (this.inst >= 0) {
      this.a = this._io.readU1();
    }
  }
  Object.defineProperty(ValidFailInst.prototype, 'inst', {
    get: function() {
      if (this._m_inst !== undefined)
        return this._m_inst;
      var _pos = this._io.pos;
      this._io.seek(5);
      this._m_inst = this._io.readU1();
      this._io.seek(_pos);
      return this._m_inst;
    }
  });

  return ValidFailInst;
})();
return ValidFailInst;
}));

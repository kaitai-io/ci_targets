// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ExprEnum = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ExprEnum = (function() {
  ExprEnum.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,
    BOOM: 102,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
    102: "BOOM",
  });

  function ExprEnum(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprEnum.prototype._read = function() {
    this.one = this._io.readU1();
  }
  Object.defineProperty(ExprEnum.prototype, 'constDog', {
    get: function() {
      if (this._m_constDog !== undefined)
        return this._m_constDog;
      this._m_constDog = 4;
      return this._m_constDog;
    }
  });
  Object.defineProperty(ExprEnum.prototype, 'derivedBoom', {
    get: function() {
      if (this._m_derivedBoom !== undefined)
        return this._m_derivedBoom;
      this._m_derivedBoom = this.one;
      return this._m_derivedBoom;
    }
  });
  Object.defineProperty(ExprEnum.prototype, 'derivedDog', {
    get: function() {
      if (this._m_derivedDog !== undefined)
        return this._m_derivedDog;
      this._m_derivedDog = (this.one - 98);
      return this._m_derivedDog;
    }
  });

  return ExprEnum;
})();
return ExprEnum;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsEnum || (root.ParamsEnum = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsEnum_, KaitaiStream) {
var ParamsEnum = (function() {
  ParamsEnum.Animal = Object.freeze({
    DOG: 4,
    CAT: 7,
    CHICKEN: 12,

    4: "DOG",
    7: "CAT",
    12: "CHICKEN",
  });

  function ParamsEnum(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsEnum.prototype._read = function() {
    this.one = this._io.readU1();
    this.invokeWithParam = new WithParam(this._io, this, this._root, this.one);
  }

  var WithParam = ParamsEnum.WithParam = (function() {
    function WithParam(_io, _parent, _root, enumeratedOne) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;
      this.enumeratedOne = enumeratedOne;

      this._read();
    }
    WithParam.prototype._read = function() {
    }
    Object.defineProperty(WithParam.prototype, 'isCat', {
      get: function() {
        if (this._m_isCat !== undefined)
          return this._m_isCat;
        this._m_isCat = this.enumeratedOne == ParamsEnum.Animal.CAT;
        return this._m_isCat;
      }
    });

    return WithParam;
  })();

  return ParamsEnum;
})();
ParamsEnum_.ParamsEnum = ParamsEnum;
});

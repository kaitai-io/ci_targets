// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumDeepLiterals = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var EnumDeepLiterals = (function() {
  function EnumDeepLiterals(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumDeepLiterals.prototype._read = function() {
    this.pet1 = this._io.readU4le();
    this.pet2 = this._io.readU4le();
  }

  var Container1 = EnumDeepLiterals.Container1 = (function() {
    Container1.Animal = Object.freeze({
      DOG: 4,
      CAT: 7,
      CHICKEN: 12,

      4: "DOG",
      7: "CAT",
      12: "CHICKEN",
    });

    function Container1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Container1.prototype._read = function() {
    }

    var Container2 = Container1.Container2 = (function() {
      Container2.Animal = Object.freeze({
        CANARY: 4,
        TURTLE: 7,
        HARE: 12,

        4: "CANARY",
        7: "TURTLE",
        12: "HARE",
      });

      function Container2(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Container2.prototype._read = function() {
      }

      return Container2;
    })();

    return Container1;
  })();
  Object.defineProperty(EnumDeepLiterals.prototype, 'isPet1Ok', {
    get: function() {
      if (this._m_isPet1Ok !== undefined)
        return this._m_isPet1Ok;
      this._m_isPet1Ok = this.pet1 == EnumDeepLiterals.Container1.Animal.CAT;
      return this._m_isPet1Ok;
    }
  });
  Object.defineProperty(EnumDeepLiterals.prototype, 'isPet2Ok', {
    get: function() {
      if (this._m_isPet2Ok !== undefined)
        return this._m_isPet2Ok;
      this._m_isPet2Ok = this.pet2 == EnumDeepLiterals.Container1.Container2.Animal.HARE;
      return this._m_isPet2Ok;
    }
  });

  return EnumDeepLiterals;
})();
return EnumDeepLiterals;
}));

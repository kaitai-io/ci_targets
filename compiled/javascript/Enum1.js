// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Enum1 = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var Enum1 = (function() {
  function Enum1(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Enum1.prototype._read = function() {
    this.main = new MainObj(this._io, this, this._root);
  }

  var MainObj = Enum1.MainObj = (function() {
    MainObj.Animal = Object.freeze({
      DOG: 4,
      CAT: 7,
      CHICKEN: 12,

      4: "DOG",
      7: "CAT",
      12: "CHICKEN",
    });

    function MainObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    MainObj.prototype._read = function() {
      this.submain = new SubmainObj(this._io, this, this._root);
    }

    var SubmainObj = MainObj.SubmainObj = (function() {
      function SubmainObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      SubmainObj.prototype._read = function() {
        this.pet1 = this._io.readU4le();
        this.pet2 = this._io.readU4le();
      }

      return SubmainObj;
    })();

    return MainObj;
  })();

  return Enum1;
})();
return Enum1;
}));

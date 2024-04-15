// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.Enum1 || (root.Enum1 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (Enum1_, KaitaiStream) {
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
      this._root = _root;

      this._read();
    }
    MainObj.prototype._read = function() {
      this.submain = new SubmainObj(this._io, this, this._root);
    }

    var SubmainObj = MainObj.SubmainObj = (function() {
      function SubmainObj(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

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
Enum1_.Enum1 = Enum1;
});

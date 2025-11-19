// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.DefaultBitEndianMod || (root.DefaultBitEndianMod = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (DefaultBitEndianMod_, KaitaiStream) {
var DefaultBitEndianMod = (function() {
  function DefaultBitEndianMod(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DefaultBitEndianMod.prototype._read = function() {
    this.main = new MainObj(this._io, this, this._root);
  }

  var MainObj = DefaultBitEndianMod.MainObj = (function() {
    function MainObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    MainObj.prototype._read = function() {
      this.one = this._io.readBitsIntLe(9);
      this.two = this._io.readBitsIntLe(15);
      this.nest = new Subnest(this._io, this, this._root);
      this.nestBe = new SubnestBe(this._io, this, this._root);
    }

    var Subnest = MainObj.Subnest = (function() {
      function Subnest(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      Subnest.prototype._read = function() {
        this.two = this._io.readBitsIntLe(16);
      }

      return Subnest;
    })();

    var SubnestBe = MainObj.SubnestBe = (function() {
      function SubnestBe(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root;

        this._read();
      }
      SubnestBe.prototype._read = function() {
        this.two = this._io.readBitsIntBe(16);
      }

      return SubnestBe;
    })();

    return MainObj;
  })();

  return DefaultBitEndianMod;
})();
DefaultBitEndianMod_.DefaultBitEndianMod = DefaultBitEndianMod;
});

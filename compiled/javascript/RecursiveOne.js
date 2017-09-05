// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RecursiveOne = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var RecursiveOne = (function() {
  function RecursiveOne(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RecursiveOne.prototype._read = function() {
    this.one = this._io.readU1();
    switch ((this.one & 3)) {
    case 0:
      this.next = new RecursiveOne(this._io, this, null);
      break;
    case 1:
      this.next = new RecursiveOne(this._io, this, null);
      break;
    case 2:
      this.next = new RecursiveOne(this._io, this, null);
      break;
    case 3:
      this.next = new Fini(this._io, this, this._root);
      break;
    }
  }

  var Fini = RecursiveOne.Fini = (function() {
    function Fini(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Fini.prototype._read = function() {
      this.finisher = this._io.readU2le();
    }

    return Fini;
  })();

  return RecursiveOne;
})();
return RecursiveOne;
}));

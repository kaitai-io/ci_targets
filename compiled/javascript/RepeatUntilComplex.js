// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatUntilComplex = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var RepeatUntilComplex = (function() {
  function RepeatUntilComplex(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilComplex.prototype._read = function() {
    this.first = [];
    var i = 0;
    do {
      var _ = new TypeU1(this._io, this, this._root);
      this.first.push(_);
      i++;
    } while (!(_.count == 0));
    this.second = [];
    var i = 0;
    do {
      var _ = new TypeU2(this._io, this, this._root);
      this.second.push(_);
      i++;
    } while (!(_.count == 0));
    this.third = [];
    var i = 0;
    do {
      var _ = this._io.readU1();
      this.third.push(_);
      i++;
    } while (!(_ == 0));
  }

  var TypeU1 = RepeatUntilComplex.TypeU1 = (function() {
    function TypeU1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    TypeU1.prototype._read = function() {
      this.count = this._io.readU1();
      this.values = [];
      for (var i = 0; i < this.count; i++) {
        this.values.push(this._io.readU1());
      }
    }

    return TypeU1;
  })();

  var TypeU2 = RepeatUntilComplex.TypeU2 = (function() {
    function TypeU2(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    TypeU2.prototype._read = function() {
      this.count = this._io.readU2le();
      this.values = [];
      for (var i = 0; i < this.count; i++) {
        this.values.push(this._io.readU2le());
      }
    }

    return TypeU2;
  })();

  return RepeatUntilComplex;
})();
return RepeatUntilComplex;
}));

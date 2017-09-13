// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.MultipleUse = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var MultipleUse = (function() {
  function MultipleUse(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  MultipleUse.prototype._read = function() {
    this.t1 = new Type1(this._io, this, this._root);
    this.t2 = new Type2(this._io, this, this._root);
  }

  var Multi = MultipleUse.Multi = (function() {
    function Multi(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Multi.prototype._read = function() {
      this.value = this._io.readS4le();
    }

    return Multi;
  })();

  var Type1 = MultipleUse.Type1 = (function() {
    function Type1(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Type1.prototype._read = function() {
      this.firstUse = new Multi(this._io, this, this._root);
    }

    return Type1;
  })();

  var Type2 = MultipleUse.Type2 = (function() {
    function Type2(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Type2.prototype._read = function() {
    }
    Object.defineProperty(Type2.prototype, 'secondUse', {
      get: function() {
        if (this._m_secondUse !== undefined)
          return this._m_secondUse;
        var _pos = this._io.pos;
        this._io.seek(0);
        this._m_secondUse = new Multi(this._io, this, this._root);
        this._io.seek(_pos);
        return this._m_secondUse;
      }
    });

    return Type2;
  })();

  return MultipleUse;
})();
return MultipleUse;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NavParentFalse = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var NavParentFalse = (function() {
  function NavParentFalse(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentFalse.prototype._read = function() {
    this.childSize = this._io.readU1();
    this.elementA = new ParentA(this._io, this, this._root);
    this.elementB = new ParentB(this._io, this, this._root);
  }

  var ParentA = NavParentFalse.ParentA = (function() {
    function ParentA(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ParentA.prototype._read = function() {
      this.foo = new Child(this._io, this, this._root);
      this.bar = new ParentB(this._io, this, this._root);
    }

    return ParentA;
  })();

  var ParentB = NavParentFalse.ParentB = (function() {
    function ParentB(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ParentB.prototype._read = function() {
      this.foo = new Child(this._io, null, this._root);
    }

    return ParentB;
  })();

  var Child = NavParentFalse.Child = (function() {
    function Child(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Child.prototype._read = function() {
      this.code = this._io.readU1();
      if (this.code == 73) {
        this.more = this._io.readBytes(this._parent._parent.childSize);
      }
    }

    return Child;
  })();

  return NavParentFalse;
})();
return NavParentFalse;
}));

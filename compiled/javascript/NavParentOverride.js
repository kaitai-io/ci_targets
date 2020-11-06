// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NavParentOverride = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var NavParentOverride = (function() {
  function NavParentOverride(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentOverride.prototype._read = function() {
    this.childSize = this._io.readU1();
    this.child1 = new Child(this._io, this, this._root);
    this.mediator2 = new Mediator(this._io, this, this._root);
  }

  var Mediator = NavParentOverride.Mediator = (function() {
    function Mediator(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Mediator.prototype._read = function() {
      this.child2 = new Child(this._io, this._parent, this._root);
    }

    return Mediator;
  })();

  var Child = NavParentOverride.Child = (function() {
    function Child(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Child.prototype._read = function() {
      this.data = this._io.readBytes(this._parent.childSize);
    }

    return Child;
  })();

  return NavParentOverride;
})();
return NavParentOverride;
}));

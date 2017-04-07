// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavParentOverride = (function() {
  function NavParentOverride(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.childSize = this._io.readU1();
    this.child1 = new Child(this._io, this, this._root);
    this.mediator2 = new Mediator(this._io, this, this._root);
  }

  var Mediator = NavParentOverride.Mediator = (function() {
    function Mediator(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.child2 = new Child(this._io, this, this._root);
    }

    return Mediator;
  })();

  var Child = NavParentOverride.Child = (function() {
    function Child(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.data = this._io.readBytes(this._parent.childSize);
    }

    return Child;
  })();

  return NavParentOverride;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavParentOverride', [], function() {
    return NavParentOverride;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavParentOverride;
}

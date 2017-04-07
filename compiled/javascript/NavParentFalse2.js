// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavParentFalse2 = (function() {
  function NavParentFalse2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.parentless = new Child(this._io, this, this._root);
  }

  var Child = NavParentFalse2.Child = (function() {
    function Child(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.foo = this._io.readU1();
    }

    return Child;
  })();

  return NavParentFalse2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavParentFalse2', [], function() {
    return NavParentFalse2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavParentFalse2;
}

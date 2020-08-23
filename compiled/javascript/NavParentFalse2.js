// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NavParentFalse2 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var NavParentFalse2 = (function() {
  function NavParentFalse2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentFalse2.prototype._read = function() {
    this.parentless = new Child(this._io, null, this._root);
  }

  var Child = NavParentFalse2.Child = (function() {
    function Child(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Child.prototype._read = function() {
      this.foo = this._io.readU1();
    }

    return Child;
  })();

  return NavParentFalse2;
})();
return NavParentFalse2;
}));

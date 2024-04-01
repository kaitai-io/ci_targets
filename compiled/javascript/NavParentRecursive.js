// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavParentRecursive || (root.NavParentRecursive = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavParentRecursive_, KaitaiStream) {
var NavParentRecursive = (function() {
  function NavParentRecursive(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentRecursive.prototype._read = function() {
    this.value = this._io.readU1();
    if (this.value == 255) {
      this.next = new NavParentRecursive_.NavParentRecursive(this._io, this, this._root);
    }
  }
  Object.defineProperty(NavParentRecursive.prototype, 'parentValue', {
    get: function() {
      if (this._m_parentValue !== undefined)
        return this._m_parentValue;
      if (this.value != 255) {
        this._m_parentValue = this._parent.value;
      }
      return this._m_parentValue;
    }
  });

  return NavParentRecursive;
})();
NavParentRecursive_.NavParentRecursive = NavParentRecursive;
});

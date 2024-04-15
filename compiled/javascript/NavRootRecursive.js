// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavRootRecursive || (root.NavRootRecursive = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavRootRecursive_, KaitaiStream) {
var NavRootRecursive = (function() {
  function NavRootRecursive(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavRootRecursive.prototype._read = function() {
    this.value = this._io.readU1();
    if (this.value == 255) {
      this.next = new NavRootRecursive(this._io, this, this._root);
    }
  }
  Object.defineProperty(NavRootRecursive.prototype, 'rootValue', {
    get: function() {
      if (this._m_rootValue !== undefined)
        return this._m_rootValue;
      this._m_rootValue = this._root.value;
      return this._m_rootValue;
    }
  });

  return NavRootRecursive;
})();
NavRootRecursive_.NavRootRecursive = NavRootRecursive;
});

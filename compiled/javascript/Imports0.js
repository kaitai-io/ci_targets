// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    factory(root.Imports0 || (root.Imports0 = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (Imports0_, KaitaiStream, HelloWorld_) {
var Imports0 = (function() {
  function Imports0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Imports0.prototype._read = function() {
    this.two = this._io.readU1();
    this.hw = new HelloWorld_.HelloWorld(this._io, null, null);
  }
  Object.defineProperty(Imports0.prototype, 'hwOne', {
    get: function() {
      if (this._m_hwOne !== undefined)
        return this._m_hwOne;
      this._m_hwOne = this.hw.one;
      return this._m_hwOne;
    }
  });

  return Imports0;
})();
Imports0_.Imports0 = Imports0;
});

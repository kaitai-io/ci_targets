// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    factory(root.TypeTernaryOpaque || (root.TypeTernaryOpaque = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (TypeTernaryOpaque_, KaitaiStream, HelloWorld_) {
var TypeTernaryOpaque = (function() {
  function TypeTernaryOpaque(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TypeTernaryOpaque.prototype._read = function() {
    if (!(this.isHack)) {
      this._raw_difWoHack = this._io.readBytes(1);
      var _io__raw_difWoHack = new KaitaiStream(this._raw_difWoHack);
      this.difWoHack = new HelloWorld_.HelloWorld(_io__raw_difWoHack, null, null);
    }
    if (this.isHack) {
      this._raw__raw_difWithHack = this._io.readBytes(1);
      this._raw_difWithHack = KaitaiStream.processXorOne(this._raw__raw_difWithHack, 3);
      var _io__raw_difWithHack = new KaitaiStream(this._raw_difWithHack);
      this.difWithHack = new HelloWorld_.HelloWorld(_io__raw_difWithHack, null, null);
    }
  }
  Object.defineProperty(TypeTernaryOpaque.prototype, 'dif', {
    get: function() {
      if (this._m_dif !== undefined)
        return this._m_dif;
      this._m_dif = (!(this.isHack) ? this.difWoHack : this.difWithHack);
      return this._m_dif;
    }
  });
  Object.defineProperty(TypeTernaryOpaque.prototype, 'isHack', {
    get: function() {
      if (this._m_isHack !== undefined)
        return this._m_isHack;
      this._m_isHack = false;
      return this._m_isHack;
    }
  });

  return TypeTernaryOpaque;
})();
TypeTernaryOpaque_.TypeTernaryOpaque = TypeTernaryOpaque;
});

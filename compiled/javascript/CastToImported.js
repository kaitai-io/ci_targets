// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    factory(root.CastToImported || (root.CastToImported = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (CastToImported_, KaitaiStream, HelloWorld_) {
var CastToImported = (function() {
  function CastToImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CastToImported.prototype._read = function() {
    this.one = new HelloWorld_.HelloWorld(this._io, this, null);
  }
  Object.defineProperty(CastToImported.prototype, 'oneCasted', {
    get: function() {
      if (this._m_oneCasted !== undefined)
        return this._m_oneCasted;
      this._m_oneCasted = this.one;
      return this._m_oneCasted;
    }
  });

  return CastToImported;
})();
CastToImported_.CastToImported = CastToImported;
});

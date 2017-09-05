// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', './HelloWorld'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('./HelloWorld'));
  } else {
    root.CastToImported = factory(root.KaitaiStream, root.HelloWorld);
  }
}(this, function (KaitaiStream, HelloWorld) {
var CastToImported = (function() {
  function CastToImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CastToImported.prototype._read = function() {
    this.one = new HelloWorld(this._io, this, null);
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
return CastToImported;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.CastToTop || (root.CastToTop = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (CastToTop_, KaitaiStream) {
var CastToTop = (function() {
  function CastToTop(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CastToTop.prototype._read = function() {
    this.code = this._io.readU1();
  }
  Object.defineProperty(CastToTop.prototype, 'header', {
    get: function() {
      if (this._m_header !== undefined)
        return this._m_header;
      var _pos = this._io.pos;
      this._io.seek(1);
      this._m_header = new CastToTop(this._io, this, this._root);
      this._io.seek(_pos);
      return this._m_header;
    }
  });
  Object.defineProperty(CastToTop.prototype, 'headerCasted', {
    get: function() {
      if (this._m_headerCasted !== undefined)
        return this._m_headerCasted;
      this._m_headerCasted = this.header;
      return this._m_headerCasted;
    }
  });

  return CastToTop;
})();
CastToTop_.CastToTop = CastToTop;
});

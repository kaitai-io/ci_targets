// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrLiterals2 || (root.StrLiterals2 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrLiterals2_, KaitaiStream) {
var StrLiterals2 = (function() {
  function StrLiterals2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrLiterals2.prototype._read = function() {
  }
  Object.defineProperty(StrLiterals2.prototype, 'dollar1', {
    get: function() {
      if (this._m_dollar1 !== undefined)
        return this._m_dollar1;
      this._m_dollar1 = "$foo";
      return this._m_dollar1;
    }
  });
  Object.defineProperty(StrLiterals2.prototype, 'dollar2', {
    get: function() {
      if (this._m_dollar2 !== undefined)
        return this._m_dollar2;
      this._m_dollar2 = "${foo}";
      return this._m_dollar2;
    }
  });
  Object.defineProperty(StrLiterals2.prototype, 'hash', {
    get: function() {
      if (this._m_hash !== undefined)
        return this._m_hash;
      this._m_hash = "#{foo}";
      return this._m_hash;
    }
  });
  Object.defineProperty(StrLiterals2.prototype, 'atSign', {
    get: function() {
      if (this._m_atSign !== undefined)
        return this._m_atSign;
      this._m_atSign = "@foo";
      return this._m_atSign;
    }
  });

  return StrLiterals2;
})();
StrLiterals2_.StrLiterals2 = StrLiterals2;
});

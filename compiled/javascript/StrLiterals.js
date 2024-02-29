// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrLiterals || (root.StrLiterals = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrLiterals_, KaitaiStream) {
var StrLiterals = (function() {
  function StrLiterals(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrLiterals.prototype._read = function() {
  }
  Object.defineProperty(StrLiterals.prototype, 'octalEatup', {
    get: function() {
      if (this._m_octalEatup !== undefined)
        return this._m_octalEatup;
      this._m_octalEatup = "\x0022";
      return this._m_octalEatup;
    }
  });
  Object.defineProperty(StrLiterals.prototype, 'backslashes', {
    get: function() {
      if (this._m_backslashes !== undefined)
        return this._m_backslashes;
      this._m_backslashes = "\\\\\\";
      return this._m_backslashes;
    }
  });
  Object.defineProperty(StrLiterals.prototype, 'doubleQuotes', {
    get: function() {
      if (this._m_doubleQuotes !== undefined)
        return this._m_doubleQuotes;
      this._m_doubleQuotes = "\"\"\"";
      return this._m_doubleQuotes;
    }
  });
  Object.defineProperty(StrLiterals.prototype, 'complexStr', {
    get: function() {
      if (this._m_complexStr !== undefined)
        return this._m_complexStr;
      this._m_complexStr = "\x00\x01\x02\x07\x08\n\r\t\x0b\x0c\x1b=\x07\n$\u263b";
      return this._m_complexStr;
    }
  });
  Object.defineProperty(StrLiterals.prototype, 'octalEatup2', {
    get: function() {
      if (this._m_octalEatup2 !== undefined)
        return this._m_octalEatup2;
      this._m_octalEatup2 = "\x022";
      return this._m_octalEatup2;
    }
  });

  return StrLiterals;
})();
StrLiterals_.StrLiterals = StrLiterals;
});

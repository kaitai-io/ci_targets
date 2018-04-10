// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.YamlInts = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var YamlInts = (function() {
  function YamlInts(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  YamlInts.prototype._read = function() {
  }
  Object.defineProperty(YamlInts.prototype, 'testU4Dec', {
    get: function() {
      if (this._m_testU4Dec !== undefined)
        return this._m_testU4Dec;
      this._m_testU4Dec = 4294967295;
      return this._m_testU4Dec;
    }
  });
  Object.defineProperty(YamlInts.prototype, 'testU4Hex', {
    get: function() {
      if (this._m_testU4Hex !== undefined)
        return this._m_testU4Hex;
      this._m_testU4Hex = 4294967295;
      return this._m_testU4Hex;
    }
  });
  Object.defineProperty(YamlInts.prototype, 'testU8Dec', {
    get: function() {
      if (this._m_testU8Dec !== undefined)
        return this._m_testU8Dec;
      this._m_testU8Dec = 18446744073709551615;
      return this._m_testU8Dec;
    }
  });
  Object.defineProperty(YamlInts.prototype, 'testU8Hex', {
    get: function() {
      if (this._m_testU8Hex !== undefined)
        return this._m_testU8Hex;
      this._m_testU8Hex = 18446744073709551615;
      return this._m_testU8Hex;
    }
  });

  return YamlInts;
})();
return YamlInts;
}));

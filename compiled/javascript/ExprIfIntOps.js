// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIfIntOps || (root.ExprIfIntOps = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIfIntOps_, KaitaiStream) {
var ExprIfIntOps = (function() {
  function ExprIfIntOps(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIfIntOps.prototype._read = function() {
    if (true) {
      this.key = this._io.readU8le();
    }
    this.skip = this._io.readBytes(8);
    this._raw_bytes = this._io.readBytes(8);
    this.bytes = KaitaiStream.processXorOne(this._raw_bytes, this.key);
    this.items = [];
    for (var i = 0; i < 4; i++) {
      this.items.push(this._io.readS1());
    }
  }
  Object.defineProperty(ExprIfIntOps.prototype, 'bytesSubKey', {
    get: function() {
      if (this._m_bytesSubKey !== undefined)
        return this._m_bytesSubKey;
      this._m_bytesSubKey = this.bytes[this.key];
      return this._m_bytesSubKey;
    }
  });
  Object.defineProperty(ExprIfIntOps.prototype, 'itemsSubKey', {
    get: function() {
      if (this._m_itemsSubKey !== undefined)
        return this._m_itemsSubKey;
      this._m_itemsSubKey = this.items[this.key];
      return this._m_itemsSubKey;
    }
  });

  return ExprIfIntOps;
})();
ExprIfIntOps_.ExprIfIntOps = ExprIfIntOps;
});

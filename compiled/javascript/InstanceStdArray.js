// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceStdArray || (root.InstanceStdArray = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceStdArray_, KaitaiStream) {
var InstanceStdArray = (function() {
  function InstanceStdArray(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceStdArray.prototype._read = function() {
    this.ofs = this._io.readU4le();
    this.entrySize = this._io.readU4le();
    this.qtyEntries = this._io.readU4le();
  }
  Object.defineProperty(InstanceStdArray.prototype, 'entries', {
    get: function() {
      if (this._m_entries !== undefined)
        return this._m_entries;
      var _pos = this._io.pos;
      this._io.seek(this.ofs);
      this._m_entries = [];
      for (var i = 0; i < this.qtyEntries; i++) {
        this._m_entries.push(this._io.readBytes(this.entrySize));
      }
      this._io.seek(_pos);
      return this._m_entries;
    }
  });

  return InstanceStdArray;
})();
InstanceStdArray_.InstanceStdArray = InstanceStdArray;
});

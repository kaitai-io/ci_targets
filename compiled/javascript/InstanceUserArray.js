// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceUserArray || (root.InstanceUserArray = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceUserArray_, KaitaiStream) {
var InstanceUserArray = (function() {
  function InstanceUserArray(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceUserArray.prototype._read = function() {
    this.ofs = this._io.readU4le();
    this.entrySize = this._io.readU4le();
    this.qtyEntries = this._io.readU4le();
  }

  var Entry = InstanceUserArray.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Entry.prototype._read = function() {
      this.word1 = this._io.readU2le();
      this.word2 = this._io.readU2le();
    }

    return Entry;
  })();
  Object.defineProperty(InstanceUserArray.prototype, 'userEntries', {
    get: function() {
      if (this._m_userEntries !== undefined)
        return this._m_userEntries;
      if (this.ofs > 0) {
        var _pos = this._io.pos;
        this._io.seek(this.ofs);
        this._raw__m_userEntries = [];
        this._m_userEntries = [];
        for (var i = 0; i < this.qtyEntries; i++) {
          this._raw__m_userEntries.push(this._io.readBytes(this.entrySize));
          var _io__raw__m_userEntries = new KaitaiStream(this._raw__m_userEntries[i]);
          this._m_userEntries.push(new Entry(_io__raw__m_userEntries, this, this._root));
        }
        this._io.seek(_pos);
      }
      return this._m_userEntries;
    }
  });

  return InstanceUserArray;
})();
InstanceUserArray_.InstanceUserArray = InstanceUserArray;
});

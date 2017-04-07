// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var InstanceUserArray = (function() {
  function InstanceUserArray(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.ofs = this._io.readU4le();
    this.entrySize = this._io.readU4le();
    this.qtyEntries = this._io.readU4le();
  }

  var Entry = InstanceUserArray.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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
        this._raw__m_userEntries = new Array(this.qtyEntries);
        this._m_userEntries = new Array(this.qtyEntries);
        for (var i = 0; i < this.qtyEntries; i++) {
          this._raw__m_userEntries[i] = this._io.readBytes(this.entrySize);
          var _io__raw__m_userEntries = new KaitaiStream(this._raw__m_userEntries[i]);
          this._m_userEntries[i] = new Entry(_io__raw__m_userEntries, this, this._root);
        }
        this._io.seek(_pos);
      }
      return this._m_userEntries;
    }
  });

  return InstanceUserArray;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('InstanceUserArray', [], function() {
    return InstanceUserArray;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = InstanceUserArray;
}

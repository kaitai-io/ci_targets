// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavRoot = (function() {
  function NavRoot(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.header = new HeaderObj(this._io, this, this._root);
    this.index = new IndexObj(this._io, this, this._root);
  }

  var HeaderObj = NavRoot.HeaderObj = (function() {
    function HeaderObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.qtyEntries = this._io.readU4le();
      this.filenameLen = this._io.readU4le();
    }

    return HeaderObj;
  })();

  var IndexObj = NavRoot.IndexObj = (function() {
    function IndexObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.magic = this._io.readBytes(4);
      this.entries = new Array(this._root.header.qtyEntries);
      for (var i = 0; i < this._root.header.qtyEntries; i++) {
        this.entries[i] = new Entry(this._io, this, this._root);
      }
    }

    return IndexObj;
  })();

  var Entry = NavRoot.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.filename = KaitaiStream.bytesToStr(this._io.readBytes(this._root.header.filenameLen), "UTF-8");
    }

    return Entry;
  })();

  return NavRoot;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavRoot', [], function() {
    return NavRoot;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavRoot;
}

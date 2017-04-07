// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var InstanceIoUser = (function() {
  function InstanceIoUser(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.qtyEntries = this._io.readU4le();
    this.entries = new Array(this.qtyEntries);
    for (var i = 0; i < this.qtyEntries; i++) {
      this.entries[i] = new Entry(this._io, this, this._root);
    }
    this._raw_strings = this._io.readBytesFull();
    var _io__raw_strings = new KaitaiStream(this._raw_strings);
    this.strings = new StringsObj(_io__raw_strings, this, this._root);
  }

  var Entry = InstanceIoUser.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.nameOfs = this._io.readU4le();
      this.value = this._io.readU4le();
    }
    Object.defineProperty(Entry.prototype, 'name', {
      get: function() {
        if (this._m_name !== undefined)
          return this._m_name;
        var io = this._root.strings._io;
        var _pos = io.pos;
        io.seek(this.nameOfs);
        this._m_name = KaitaiStream.bytesToStr(io.readBytesTerm(0, false, true, true), "UTF-8");
        io.seek(_pos);
        return this._m_name;
      }
    });

    return Entry;
  })();

  var StringsObj = InstanceIoUser.StringsObj = (function() {
    function StringsObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.str = [];
      while (!this._io.isEof()) {
        this.str.push(KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8"));
      }
    }

    return StringsObj;
  })();

  return InstanceIoUser;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('InstanceIoUser', [], function() {
    return InstanceIoUser;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = InstanceIoUser;
}

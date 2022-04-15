// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.InstanceIoUser = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var InstanceIoUser = (function() {
  function InstanceIoUser(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceIoUser.prototype._read = function() {
    this.qtyEntries = this._io.readU4le();
    this.entries = [];
    for (var i = 0; i < this.qtyEntries; i++) {
      this.entries.push(new Entry(this._io, this, this._root));
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

      this._read();
    }
    Entry.prototype._read = function() {
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

      this._read();
    }
    StringsObj.prototype._read = function() {
      this.str = [];
      var i = 0;
      while (!this._io.isEof()) {
        this.str.push(KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8"));
        i++;
      }
    }

    return StringsObj;
  })();

  return InstanceIoUser;
})();
return InstanceIoUser;
}));

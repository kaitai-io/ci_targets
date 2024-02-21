// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavParent || (root.NavParent = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavParent_, KaitaiStream) {
var NavParent = (function() {
  function NavParent(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParent.prototype._read = function() {
    this.header = new HeaderObj(this._io, this, this._root);
    this.index = new IndexObj(this._io, this, this._root);
  }

  var HeaderObj = NavParent.HeaderObj = (function() {
    function HeaderObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    HeaderObj.prototype._read = function() {
      this.qtyEntries = this._io.readU4le();
      this.filenameLen = this._io.readU4le();
    }

    return HeaderObj;
  })();

  var IndexObj = NavParent.IndexObj = (function() {
    function IndexObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    IndexObj.prototype._read = function() {
      this.magic = this._io.readBytes(4);
      this.entries = [];
      for (var i = 0; i < this._parent.header.qtyEntries; i++) {
        this.entries.push(new Entry(this._io, this, this._root));
      }
    }

    return IndexObj;
  })();

  var Entry = NavParent.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Entry.prototype._read = function() {
      this.filename = KaitaiStream.bytesToStr(this._io.readBytes(this._parent._parent.header.filenameLen), "UTF-8");
    }

    return Entry;
  })();

  return NavParent;
})();
NavParent_.NavParent = NavParent;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.NavRoot || (root.NavRoot = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (NavRoot_, KaitaiStream) {
var NavRoot = (function() {
  function NavRoot(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavRoot.prototype._read = function() {
    this.header = new HeaderObj(this._io, this, this._root);
    this.index = new IndexObj(this._io, this, this._root);
  }

  var Entry = NavRoot.Entry = (function() {
    function Entry(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Entry.prototype._read = function() {
      this.filename = KaitaiStream.bytesToStr(this._io.readBytes(this._root.header.filenameLen), "UTF-8");
    }

    return Entry;
  })();

  var HeaderObj = NavRoot.HeaderObj = (function() {
    function HeaderObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    HeaderObj.prototype._read = function() {
      this.qtyEntries = this._io.readU4le();
      this.filenameLen = this._io.readU4le();
    }

    return HeaderObj;
  })();

  var IndexObj = NavRoot.IndexObj = (function() {
    function IndexObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    IndexObj.prototype._read = function() {
      this.magic = this._io.readBytes(4);
      this.entries = [];
      for (var i = 0; i < this._root.header.qtyEntries; i++) {
        this.entries.push(new Entry(this._io, this, this._root));
      }
    }

    return IndexObj;
  })();

  return NavRoot;
})();
NavRoot_.NavRoot = NavRoot;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StructPadTermEqual || (root.StructPadTermEqual = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StructPadTermEqual_, KaitaiStream) {
var StructPadTermEqual = (function() {
  function StructPadTermEqual(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StructPadTermEqual.prototype._read = function() {
    this._raw_s1 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 64), 64, false);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new BytesWrapper(_io__raw_s1, this, this._root);
    this._raw_s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, true);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new BytesWrapper(_io__raw_s2, this, this._root);
    this._raw_s3 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 43, false);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new BytesWrapper(_io__raw_s3, this, this._root);
    this._raw_s4 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 46), 46, true);
    var _io__raw_s4 = new KaitaiStream(this._raw_s4);
    this.s4 = new BytesWrapper(_io__raw_s4, this, this._root);
  }

  var BytesWrapper = StructPadTermEqual.BytesWrapper = (function() {
    function BytesWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BytesWrapper.prototype._read = function() {
      this.value = this._io.readBytesFull();
    }

    return BytesWrapper;
  })();

  return StructPadTermEqual;
})();
StructPadTermEqual_.StructPadTermEqual = StructPadTermEqual;
});

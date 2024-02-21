// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ZlibSurrounded || (root.ZlibSurrounded = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ZlibSurrounded_, KaitaiStream) {
var ZlibSurrounded = (function() {
  function ZlibSurrounded(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ZlibSurrounded.prototype._read = function() {
    this.pre = this._io.readBytes(4);
    this._raw__raw_zlib = this._io.readBytes(12);
    this._raw_zlib = KaitaiStream.processZlib(this._raw__raw_zlib);
    var _io__raw_zlib = new KaitaiStream(this._raw_zlib);
    this.zlib = new Inflated(_io__raw_zlib, this, this._root);
    this.post = this._io.readBytes(4);
  }

  var Inflated = ZlibSurrounded.Inflated = (function() {
    function Inflated(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Inflated.prototype._read = function() {
      this.num = this._io.readS4le();
    }

    return Inflated;
  })();

  return ZlibSurrounded;
})();
ZlibSurrounded_.ZlibSurrounded = ZlibSurrounded;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStrzUtf16V4 || (root.TermStrzUtf16V4 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStrzUtf16V4_, KaitaiStream) {
var TermStrzUtf16V4 = (function() {
  function TermStrzUtf16V4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStrzUtf16V4.prototype._read = function() {
    this._raw_s1 = this._io.readBytes(6);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new S1Type(_io__raw_s1, this, this._root);
    this.skipTerm1 = this._io.readBytes(2);
    this._raw_s2 = this._io.readBytes(6);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new S2Type(_io__raw_s2, this, this._root);
    this.skipTerm2 = this._io.readBytes(2);
    this._raw_s3 = this._io.readBytes(6);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new S3Type(_io__raw_s3, this, this._root);
  }

  var S1Type = TermStrzUtf16V4.S1Type = (function() {
    function S1Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S1Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), false, true, false), "UTF-16LE");
    }

    return S1Type;
  })();

  var S2Type = TermStrzUtf16V4.S2Type = (function() {
    function S2Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S2Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), false, false, false), "UTF-16LE");
    }

    return S2Type;
  })();

  var S3Type = TermStrzUtf16V4.S3Type = (function() {
    function S3Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S3Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(this._io.readBytesTermMulti(new Uint8Array([0, 0]), true, true, false), "UTF-16LE");
    }

    return S3Type;
  })();

  return TermStrzUtf16V4;
})();
TermStrzUtf16V4_.TermStrzUtf16V4 = TermStrzUtf16V4;
});

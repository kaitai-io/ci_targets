// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TermStruct4 || (root.TermStruct4 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TermStruct4_, KaitaiStream) {
var TermStruct4 = (function() {
  function TermStruct4(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TermStruct4.prototype._read = function() {
    this._raw_s1 = this._io.readBytes(3);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new S1Type(_io__raw_s1, this, this._root);
    this.skipTerm1 = this._io.readU1();
    this._raw_s2 = this._io.readBytes(3);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new S2Type(_io__raw_s2, this, this._root);
    this.skipTerm2 = this._io.readU1();
    this._raw_s3 = this._io.readBytes(3);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new S3Type(_io__raw_s3, this, this._root);
  }

  var BytesWrapper = TermStruct4.BytesWrapper = (function() {
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

  var S1Type = TermStruct4.S1Type = (function() {
    function S1Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S1Type.prototype._read = function() {
      this._raw_value = this._io.readBytesTerm(124, false, true, false);
      var _io__raw_value = new KaitaiStream(this._raw_value);
      this.value = new BytesWrapper(_io__raw_value, this, this._root);
    }

    return S1Type;
  })();

  var S2Type = TermStruct4.S2Type = (function() {
    function S2Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S2Type.prototype._read = function() {
      this._raw_value = this._io.readBytesTerm(124, false, false, false);
      var _io__raw_value = new KaitaiStream(this._raw_value);
      this.value = new BytesWrapper(_io__raw_value, this, this._root);
    }

    return S2Type;
  })();

  var S3Type = TermStruct4.S3Type = (function() {
    function S3Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S3Type.prototype._read = function() {
      this._raw_value = this._io.readBytesTerm(64, true, true, false);
      var _io__raw_value = new KaitaiStream(this._raw_value);
      this.value = new BytesWrapper(_io__raw_value, this, this._root);
    }

    return S3Type;
  })();

  return TermStruct4;
})();
TermStruct4_.TermStruct4 = TermStruct4;
});

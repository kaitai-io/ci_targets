// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEosPadTermEqual || (root.StrEosPadTermEqual = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEosPadTermEqual_, KaitaiStream) {
var StrEosPadTermEqual = (function() {
  function StrEosPadTermEqual(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEosPadTermEqual.prototype._read = function() {
    this._raw_s1 = this._io.readBytes(20);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new S1Type(_io__raw_s1, this, this._root);
    this._raw_s2 = this._io.readBytes(20);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new S2Type(_io__raw_s2, this, this._root);
    this._raw_s3 = this._io.readBytes(20);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new S3Type(_io__raw_s3, this, this._root);
    this._raw_s4 = this._io.readBytes(20);
    var _io__raw_s4 = new KaitaiStream(this._raw_s4);
    this.s4 = new S4Type(_io__raw_s4, this, this._root);
  }

  var S1Type = StrEosPadTermEqual.S1Type = (function() {
    function S1Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S1Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 64), 64, false), "UTF-8");
    }

    return S1Type;
  })();

  var S2Type = StrEosPadTermEqual.S2Type = (function() {
    function S2Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S2Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 43), 64, true), "UTF-8");
    }

    return S2Type;
  })();

  var S3Type = StrEosPadTermEqual.S3Type = (function() {
    function S3Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S3Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 43), 43, false), "UTF-8");
    }

    return S3Type;
  })();

  var S4Type = StrEosPadTermEqual.S4Type = (function() {
    function S4Type(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    S4Type.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 46), 46, true), "UTF-8");
    }

    return S4Type;
  })();

  return StrEosPadTermEqual;
})();
StrEosPadTermEqual_.StrEosPadTermEqual = StrEosPadTermEqual;
});

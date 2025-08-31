// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEosPadTermEmpty || (root.StrEosPadTermEmpty = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEosPadTermEmpty_, KaitaiStream) {
var StrEosPadTermEmpty = (function() {
  function StrEosPadTermEmpty(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEosPadTermEmpty.prototype._read = function() {
    this._raw_strPad = this._io.readBytes(20);
    var _io__raw_strPad = new KaitaiStream(this._raw_strPad);
    this.strPad = new StrPadType(_io__raw_strPad, this, this._root);
    this._raw_strTerm = this._io.readBytes(20);
    var _io__raw_strTerm = new KaitaiStream(this._raw_strTerm);
    this.strTerm = new StrTermType(_io__raw_strTerm, this, this._root);
    this._raw_strTermAndPad = this._io.readBytes(20);
    var _io__raw_strTermAndPad = new KaitaiStream(this._raw_strTermAndPad);
    this.strTermAndPad = new StrTermAndPadType(_io__raw_strTermAndPad, this, this._root);
    this._raw_strTermInclude = this._io.readBytes(20);
    var _io__raw_strTermInclude = new KaitaiStream(this._raw_strTermInclude);
    this.strTermInclude = new StrTermIncludeType(_io__raw_strTermInclude, this, this._root);
  }

  var StrPadType = StrEosPadTermEmpty.StrPadType = (function() {
    function StrPadType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrPadType.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 64), "UTF-8");
    }

    return StrPadType;
  })();

  var StrTermAndPadType = StrEosPadTermEmpty.StrTermAndPadType = (function() {
    function StrTermAndPadType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermAndPadType.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 43), 64, false), "UTF-8");
    }

    return StrTermAndPadType;
  })();

  var StrTermIncludeType = StrEosPadTermEmpty.StrTermIncludeType = (function() {
    function StrTermIncludeType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermIncludeType.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytesFull(), 64, true), "UTF-8");
    }

    return StrTermIncludeType;
  })();

  var StrTermType = StrEosPadTermEmpty.StrTermType = (function() {
    function StrTermType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermType.prototype._read = function() {
      this.value = KaitaiStream.bytesToStr(KaitaiStream.bytesTerminate(this._io.readBytesFull(), 64, false), "UTF-8");
    }

    return StrTermType;
  })();

  return StrEosPadTermEmpty;
})();
StrEosPadTermEmpty_.StrEosPadTermEmpty = StrEosPadTermEmpty;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BytesEosPadTerm || (root.BytesEosPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BytesEosPadTerm_, KaitaiStream) {
var BytesEosPadTerm = (function() {
  function BytesEosPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BytesEosPadTerm.prototype._read = function() {
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

  var StrPadType = BytesEosPadTerm.StrPadType = (function() {
    function StrPadType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrPadType.prototype._read = function() {
      this.value = KaitaiStream.bytesStripRight(this._io.readBytesFull(), 64);
    }

    return StrPadType;
  })();

  var StrTermAndPadType = BytesEosPadTerm.StrTermAndPadType = (function() {
    function StrTermAndPadType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermAndPadType.prototype._read = function() {
      this.value = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), 43), 64, false);
    }

    return StrTermAndPadType;
  })();

  var StrTermIncludeType = BytesEosPadTerm.StrTermIncludeType = (function() {
    function StrTermIncludeType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermIncludeType.prototype._read = function() {
      this.value = KaitaiStream.bytesTerminate(this._io.readBytesFull(), 64, true);
    }

    return StrTermIncludeType;
  })();

  var StrTermType = BytesEosPadTerm.StrTermType = (function() {
    function StrTermType(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    StrTermType.prototype._read = function() {
      this.value = KaitaiStream.bytesTerminate(this._io.readBytesFull(), 64, false);
    }

    return StrTermType;
  })();

  return BytesEosPadTerm;
})();
BytesEosPadTerm_.BytesEosPadTerm = BytesEosPadTerm;
});

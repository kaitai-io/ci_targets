// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEncodingsEscapingEnc || (root.StrEncodingsEscapingEnc = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEncodingsEscapingEnc_, KaitaiStream) {
var StrEncodingsEscapingEnc = (function() {
  function StrEncodingsEscapingEnc(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEncodingsEscapingEnc.prototype._read = function() {
    this.lenOf1 = this._io.readU2le();
    this._raw_str1 = this._io.readBytes(this.lenOf1);
    var _io__raw_str1 = new KaitaiStream(this._raw_str1);
    this.str1 = new Str1Wrapper(_io__raw_str1, this, this._root);
    this.lenOf2 = this._io.readU2le();
    this._raw_str2 = this._io.readBytes(this.lenOf2);
    var _io__raw_str2 = new KaitaiStream(this._raw_str2);
    this.str2 = new Str2Wrapper(_io__raw_str2, this, this._root);
    this.lenOf3 = this._io.readU2le();
    this._raw_str3 = this._io.readBytes(this.lenOf3);
    var _io__raw_str3 = new KaitaiStream(this._raw_str3);
    this.str3 = new Str3Wrapper(_io__raw_str3, this, this._root);
    this.lenOf4 = this._io.readU2le();
    this._raw_str4 = this._io.readBytes(this.lenOf4);
    var _io__raw_str4 = new KaitaiStream(this._raw_str4);
    this.str4 = new Str4Wrapper(_io__raw_str4, this, this._root);
  }

  var Str1Wrapper = StrEncodingsEscapingEnc.Str1Wrapper = (function() {
    function Str1Wrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Str1Wrapper.prototype._read = function() {
    }
    Object.defineProperty(Str1Wrapper.prototype, 'v', {
      get: function() {
        if (this._m_v !== undefined)
          return this._m_v;
        var _pos = this._io.pos;
        this._io.seek(0);
        this._m_v = KaitaiStream.bytesToStr(this._io.readBytesFull(), "ASCII\\x");
        this._io.seek(_pos);
        return this._m_v;
      }
    });

    return Str1Wrapper;
  })();

  var Str2Wrapper = StrEncodingsEscapingEnc.Str2Wrapper = (function() {
    function Str2Wrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Str2Wrapper.prototype._read = function() {
    }
    Object.defineProperty(Str2Wrapper.prototype, 'v', {
      get: function() {
        if (this._m_v !== undefined)
          return this._m_v;
        var _pos = this._io.pos;
        this._io.seek(0);
        this._m_v = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-8\'x");
        this._io.seek(_pos);
        return this._m_v;
      }
    });

    return Str2Wrapper;
  })();

  var Str3Wrapper = StrEncodingsEscapingEnc.Str3Wrapper = (function() {
    function Str3Wrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Str3Wrapper.prototype._read = function() {
    }
    Object.defineProperty(Str3Wrapper.prototype, 'v', {
      get: function() {
        if (this._m_v !== undefined)
          return this._m_v;
        var _pos = this._io.pos;
        this._io.seek(0);
        this._m_v = KaitaiStream.bytesToStr(this._io.readBytesFull(), "SJIS\"x");
        this._io.seek(_pos);
        return this._m_v;
      }
    });

    return Str3Wrapper;
  })();

  var Str4Wrapper = StrEncodingsEscapingEnc.Str4Wrapper = (function() {
    function Str4Wrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Str4Wrapper.prototype._read = function() {
    }
    Object.defineProperty(Str4Wrapper.prototype, 'v', {
      get: function() {
        if (this._m_v !== undefined)
          return this._m_v;
        var _pos = this._io.pos;
        this._io.seek(0);
        this._m_v = KaitaiStream.bytesToStr(this._io.readBytesFull(), "IBM437\nx");
        this._io.seek(_pos);
        return this._m_v;
      }
    });

    return Str4Wrapper;
  })();

  return StrEncodingsEscapingEnc;
})();
StrEncodingsEscapingEnc_.StrEncodingsEscapingEnc = StrEncodingsEscapingEnc;
});

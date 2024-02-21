// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StrEncodingsUtf16 || (root.StrEncodingsUtf16 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StrEncodingsUtf16_, KaitaiStream) {
var StrEncodingsUtf16 = (function() {
  function StrEncodingsUtf16(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StrEncodingsUtf16.prototype._read = function() {
    this.lenBe = this._io.readU4le();
    this._raw_beBomRemoved = this._io.readBytes(this.lenBe);
    var _io__raw_beBomRemoved = new KaitaiStream(this._raw_beBomRemoved);
    this.beBomRemoved = new StrBeBomRemoved(_io__raw_beBomRemoved, this, this._root);
    this.lenLe = this._io.readU4le();
    this._raw_leBomRemoved = this._io.readBytes(this.lenLe);
    var _io__raw_leBomRemoved = new KaitaiStream(this._raw_leBomRemoved);
    this.leBomRemoved = new StrLeBomRemoved(_io__raw_leBomRemoved, this, this._root);
  }

  var StrBeBomRemoved = StrEncodingsUtf16.StrBeBomRemoved = (function() {
    function StrBeBomRemoved(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    StrBeBomRemoved.prototype._read = function() {
      this.bom = this._io.readU2be();
      this.str = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-16BE");
    }

    return StrBeBomRemoved;
  })();

  var StrLeBomRemoved = StrEncodingsUtf16.StrLeBomRemoved = (function() {
    function StrLeBomRemoved(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    StrLeBomRemoved.prototype._read = function() {
      this.bom = this._io.readU2le();
      this.str = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-16LE");
    }

    return StrLeBomRemoved;
  })();

  return StrEncodingsUtf16;
})();
StrEncodingsUtf16_.StrEncodingsUtf16 = StrEncodingsUtf16;
});

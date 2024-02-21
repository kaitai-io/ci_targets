// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsCallShort || (root.ParamsCallShort = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsCallShort_, KaitaiStream) {
var ParamsCallShort = (function() {
  function ParamsCallShort(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsCallShort.prototype._read = function() {
    this.buf1 = new MyStr1(this._io, this, this._root, 5);
    this.buf2 = new MyStr2(this._io, this, this._root, (2 + 3), true);
  }

  var MyStr1 = ParamsCallShort.MyStr1 = (function() {
    function MyStr1(_io, _parent, _root, len) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.len = len;

      this._read();
    }
    MyStr1.prototype._read = function() {
      this.body = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    }

    return MyStr1;
  })();

  var MyStr2 = ParamsCallShort.MyStr2 = (function() {
    function MyStr2(_io, _parent, _root, len, hasTrailer) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.len = len;
      this.hasTrailer = hasTrailer;

      this._read();
    }
    MyStr2.prototype._read = function() {
      this.body = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
      if (this.hasTrailer) {
        this.trailer = this._io.readU1();
      }
    }

    return MyStr2;
  })();

  return ParamsCallShort;
})();
ParamsCallShort_.ParamsCallShort = ParamsCallShort;
});

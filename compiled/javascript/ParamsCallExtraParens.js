// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsCallExtraParens || (root.ParamsCallExtraParens = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsCallExtraParens_, KaitaiStream) {
var ParamsCallExtraParens = (function() {
  function ParamsCallExtraParens(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsCallExtraParens.prototype._read = function() {
    this.buf1 = new MyStr1(this._io, this, this._root, 5);
  }

  var MyStr1 = ParamsCallExtraParens.MyStr1 = (function() {
    function MyStr1(_io, _parent, _root, len) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;
      this.len = len;

      this._read();
    }
    MyStr1.prototype._read = function() {
      this.body = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    }

    return MyStr1;
  })();

  return ParamsCallExtraParens;
})();
ParamsCallExtraParens_.ParamsCallExtraParens = ParamsCallExtraParens;
});

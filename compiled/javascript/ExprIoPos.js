// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIoPos || (root.ExprIoPos = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIoPos_, KaitaiStream) {
var ExprIoPos = (function() {
  function ExprIoPos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIoPos.prototype._read = function() {
    this._raw_substream1 = this._io.readBytes(16);
    var _io__raw_substream1 = new KaitaiStream(this._raw_substream1);
    this.substream1 = new AllPlusNumber(_io__raw_substream1, this, this._root);
    this._raw_substream2 = this._io.readBytes(14);
    var _io__raw_substream2 = new KaitaiStream(this._raw_substream2);
    this.substream2 = new AllPlusNumber(_io__raw_substream2, this, this._root);
  }

  var AllPlusNumber = ExprIoPos.AllPlusNumber = (function() {
    function AllPlusNumber(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    AllPlusNumber.prototype._read = function() {
      this.myStr = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
      this.body = this._io.readBytes(((this._io.size - this._io.pos) - 2));
      this.number = this._io.readU2le();
    }

    return AllPlusNumber;
  })();

  return ExprIoPos;
})();
ExprIoPos_.ExprIoPos = ExprIoPos;
});

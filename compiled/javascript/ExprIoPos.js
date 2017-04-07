// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ExprIoPos = (function() {
  function ExprIoPos(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

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

      this.myStr = KaitaiStream.bytesToStr(this._io.readBytesTerm(0, false, true, true), "UTF-8");
      this.body = this._io.readBytes(((this._io.size - this._io.pos) - 2));
      this.number = this._io.readU2le();
    }

    return AllPlusNumber;
  })();

  return ExprIoPos;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ExprIoPos', [], function() {
    return ExprIoPos;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ExprIoPos;
}

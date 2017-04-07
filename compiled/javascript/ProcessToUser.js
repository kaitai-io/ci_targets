// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ProcessToUser = (function() {
  function ProcessToUser(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._raw__raw_buf1 = this._io.readBytes(5);
    this._raw_buf1 = KaitaiStream.processRotateLeft(this._raw__raw_buf1, 3, 1);
    var _io__raw_buf1 = new KaitaiStream(this._raw_buf1);
    this.buf1 = new JustStr(_io__raw_buf1, this, this._root);
  }

  var JustStr = ProcessToUser.JustStr = (function() {
    function JustStr(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.str = KaitaiStream.bytesToStr(this._io.readBytesFull(), "UTF-8");
    }

    return JustStr;
  })();

  return ProcessToUser;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ProcessToUser', [], function() {
    return ProcessToUser;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ProcessToUser;
}

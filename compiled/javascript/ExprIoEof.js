// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var ExprIoEof = (function() {
  function ExprIoEof(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._raw_substream1 = this._io.readBytes(4);
    var _io__raw_substream1 = new KaitaiStream(this._raw_substream1);
    this.substream1 = new OneOrTwo(_io__raw_substream1, this, this._root);
    this._raw_substream2 = this._io.readBytes(8);
    var _io__raw_substream2 = new KaitaiStream(this._raw_substream2);
    this.substream2 = new OneOrTwo(_io__raw_substream2, this, this._root);
  }

  var OneOrTwo = ExprIoEof.OneOrTwo = (function() {
    function OneOrTwo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.one = this._io.readU4le();
      if (!this._io.isEof()) {
        this.two = this._io.readU4le();
      }
    }
    Object.defineProperty(OneOrTwo.prototype, 'reflectEof', {
      get: function() {
        if (this._m_reflectEof !== undefined)
          return this._m_reflectEof;
        this._m_reflectEof = this._io.isEof();
        return this._m_reflectEof;
      }
    });

    return OneOrTwo;
  })();

  return ExprIoEof;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('ExprIoEof', [], function() {
    return ExprIoEof;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = ExprIoEof;
}

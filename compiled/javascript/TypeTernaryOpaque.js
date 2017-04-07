// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

if (typeof require === 'function')
  var TermStrz = require('./TermStrz.js');

var TypeTernaryOpaque = (function() {
  function TypeTernaryOpaque(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    if (!this.isHack) {
      this._raw_difWoHack = this._io.readBytes(12);
      var _io__raw_difWoHack = new KaitaiStream(this._raw_difWoHack);
      this.difWoHack = new TermStrz(_io__raw_difWoHack);
    }
    if (this.isHack) {
      this._raw__raw_difWithHack = this._io.readBytes(12);
      this._raw_difWithHack = KaitaiStream.processXorOne(this._raw__raw_difWithHack, 3);
      var _io__raw_difWithHack = new KaitaiStream(this._raw_difWithHack);
      this.difWithHack = new TermStrz(_io__raw_difWithHack);
    }
  }
  Object.defineProperty(TypeTernaryOpaque.prototype, 'isHack', {
    get: function() {
      if (this._m_isHack !== undefined)
        return this._m_isHack;
      this._m_isHack = false;
      return this._m_isHack;
    }
  });
  Object.defineProperty(TypeTernaryOpaque.prototype, 'dif', {
    get: function() {
      if (this._m_dif !== undefined)
        return this._m_dif;
      this._m_dif = (!this.isHack ? this.difWoHack : this.difWithHack);
      return this._m_dif;
    }
  });

  return TypeTernaryOpaque;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('TypeTernaryOpaque', [], function() {
    return TypeTernaryOpaque;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = TypeTernaryOpaque;
}

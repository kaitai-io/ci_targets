// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NonStandard = (function() {
  function NonStandard(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NonStandard.prototype._read = function() {
    this.foo = this._io.readU1();
    switch (this.foo) {
    case 42:
      this.bar = this._io.readU2le();
      break;
    case 43:
      this.bar = this._io.readU4le();
      break;
    }
  }
  Object.defineProperty(NonStandard.prototype, 'vi', {
    get: function() {
      if (this._m_vi !== undefined)
        return this._m_vi;
      this._m_vi = this.foo;
      return this._m_vi;
    }
  });
  Object.defineProperty(NonStandard.prototype, 'pi', {
    get: function() {
      if (this._m_pi !== undefined)
        return this._m_pi;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_pi = this._io.readU1();
      this._io.seek(_pos);
      return this._m_pi;
    }
  });

  return NonStandard;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NonStandard', [], function() {
    return NonStandard;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NonStandard;
}

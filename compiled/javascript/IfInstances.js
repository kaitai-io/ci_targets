// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var IfInstances = (function() {
  function IfInstances(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

  }
  Object.defineProperty(IfInstances.prototype, 'neverHappens', {
    get: function() {
      if (this._m_neverHappens !== undefined)
        return this._m_neverHappens;
      if (false) {
        var _pos = this._io.pos;
        this._io.seek(100500);
        this._m_neverHappens = this._io.readU1();
        this._io.seek(_pos);
      }
      return this._m_neverHappens;
    }
  });

  return IfInstances;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('IfInstances', [], function() {
    return IfInstances;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = IfInstances;
}

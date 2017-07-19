// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var OpaqueExternalType02Child = (function() {
  function OpaqueExternalType02Child(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  OpaqueExternalType02Child.prototype._read = function() {
    this.s1 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, true, true), "UTF-8");
    this.s2 = KaitaiStream.bytesToStr(this._io.readBytesTerm(124, false, false, true), "UTF-8");
    this.s3 = new OpaqueExternalType02ChildChild(this._io, this, this._root);
  }

  var OpaqueExternalType02ChildChild = OpaqueExternalType02Child.OpaqueExternalType02ChildChild = (function() {
    function OpaqueExternalType02ChildChild(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    OpaqueExternalType02ChildChild.prototype._read = function() {
      if (this._root.someMethod) {
        this.s3 = KaitaiStream.bytesToStr(this._io.readBytesTerm(64, true, true, true), "UTF-8");
      }
    }

    return OpaqueExternalType02ChildChild;
  })();
  Object.defineProperty(OpaqueExternalType02Child.prototype, 'someMethod', {
    get: function() {
      if (this._m_someMethod !== undefined)
        return this._m_someMethod;
      this._m_someMethod = true;
      return this._m_someMethod;
    }
  });

  return OpaqueExternalType02Child;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('OpaqueExternalType02Child', [], function() {
    return OpaqueExternalType02Child;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = OpaqueExternalType02Child;
}

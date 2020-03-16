// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.OpaqueExternalType02Child = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
return OpaqueExternalType02Child;
}));

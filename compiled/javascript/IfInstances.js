// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IfInstances = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var IfInstances = (function() {
  function IfInstances(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IfInstances.prototype._read = function() {
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
return IfInstances;
}));

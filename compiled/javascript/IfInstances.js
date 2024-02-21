// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.IfInstances || (root.IfInstances = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (IfInstances_, KaitaiStream) {
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
IfInstances_.IfInstances = IfInstances;
});

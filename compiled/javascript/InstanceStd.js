// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceStd || (root.InstanceStd = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceStd_, KaitaiStream) {
var InstanceStd = (function() {
  function InstanceStd(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceStd.prototype._read = function() {
  }
  Object.defineProperty(InstanceStd.prototype, 'header', {
    get: function() {
      if (this._m_header !== undefined)
        return this._m_header;
      var _pos = this._io.pos;
      this._io.seek(2);
      this._m_header = KaitaiStream.bytesToStr(this._io.readBytes(5), "ASCII");
      this._io.seek(_pos);
      return this._m_header;
    }
  });

  return InstanceStd;
})();
InstanceStd_.InstanceStd = InstanceStd;
});

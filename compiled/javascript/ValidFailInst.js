// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailInst || (root.ValidFailInst = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailInst_, KaitaiStream) {
var ValidFailInst = (function() {
  function ValidFailInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailInst.prototype._read = function() {
    if (this.inst >= 0) {
      this.a = this._io.readU1();
    }
  }
  Object.defineProperty(ValidFailInst.prototype, 'inst', {
    get: function() {
      if (this._m_inst !== undefined)
        return this._m_inst;
      var _pos = this._io.pos;
      this._io.seek(5);
      this._m_inst = this._io.readU1();
      this._io.seek(_pos);
      if (!(this.inst == 80)) {
        throw new KaitaiStream.ValidationNotEqualError(80, this.inst, this._io, "/instances/inst");
      }
      return this._m_inst;
    }
  });

  return ValidFailInst;
})();
ValidFailInst_.ValidFailInst = ValidFailInst;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidFailRepeatInst || (root.ValidFailRepeatInst = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidFailRepeatInst_, KaitaiStream) {
var ValidFailRepeatInst = (function() {
  function ValidFailRepeatInst(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidFailRepeatInst.prototype._read = function() {
    if (this.inst.length == 0) {
      this.a = this._io.readBytes(0);
    }
  }
  Object.defineProperty(ValidFailRepeatInst.prototype, 'inst', {
    get: function() {
      if (this._m_inst !== undefined)
        return this._m_inst;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_inst = [];
      var i = 0;
      while (!this._io.isEof()) {
        this._m_inst.push(this._io.readU4be());
        if (!(this._m_inst[i] == 305419896)) {
          throw new KaitaiStream.ValidationNotEqualError(305419896, this._m_inst[i], this._io, "/instances/inst");
        }
        i++;
      }
      this._io.seek(_pos);
      return this._m_inst;
    }
  });

  return ValidFailRepeatInst;
})();
ValidFailRepeatInst_.ValidFailRepeatInst = ValidFailRepeatInst;
});

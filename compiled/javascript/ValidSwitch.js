// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ValidSwitch || (root.ValidSwitch = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ValidSwitch_, KaitaiStream) {
var ValidSwitch = (function() {
  function ValidSwitch(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidSwitch.prototype._read = function() {
    this.a = this._io.readU1();
    if (!(this.a == 80)) {
      throw new KaitaiStream.ValidationNotEqualError(80, this.a, this._io, "/seq/0");
    }
    switch (this.a) {
    case 80:
      this.b = this._io.readU2le();
      break;
    default:
      this.b = this._io.readU2be();
      break;
    }
    if (!(this.b == 17217)) {
      throw new KaitaiStream.ValidationNotEqualError(17217, this.b, this._io, "/seq/1");
    }
  }

  return ValidSwitch;
})();
ValidSwitch_.ValidSwitch = ValidSwitch;
});

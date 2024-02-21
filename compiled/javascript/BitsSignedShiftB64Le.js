// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BitsSignedShiftB64Le || (root.BitsSignedShiftB64Le = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BitsSignedShiftB64Le_, KaitaiStream) {
var BitsSignedShiftB64Le = (function() {
  function BitsSignedShiftB64Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BitsSignedShiftB64Le.prototype._read = function() {
    this.a = this._io.readBitsIntLe(63);
    this.b = this._io.readBitsIntLe(9);
  }

  return BitsSignedShiftB64Le;
})();
BitsSignedShiftB64Le_.BitsSignedShiftB64Le = BitsSignedShiftB64Le;
});

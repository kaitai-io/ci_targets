// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.HelloWorld = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var HelloWorld = (function() {
  function HelloWorld(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  HelloWorld.prototype._read = function() {
    this.one = this._io.readU1();
  }

  return HelloWorld;
})();
return HelloWorld;
}));

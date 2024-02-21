// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.HelloWorld || (root.HelloWorld = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (HelloWorld_, KaitaiStream) {
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
HelloWorld_.HelloWorld = HelloWorld;
});

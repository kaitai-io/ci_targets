// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './ParamsDefUsertypeImported', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./ParamsDefUsertypeImported'), require('./HelloWorld'));
  } else {
    factory(root.ImportsParamsDefUsertypeImported || (root.ImportsParamsDefUsertypeImported = {}), root.KaitaiStream, root.ParamsDefUsertypeImported || (root.ParamsDefUsertypeImported = {}), root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsParamsDefUsertypeImported_, KaitaiStream, ParamsDefUsertypeImported_, HelloWorld_) {
var ImportsParamsDefUsertypeImported = (function() {
  function ImportsParamsDefUsertypeImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsParamsDefUsertypeImported.prototype._read = function() {
    this.hw = new HelloWorld_.HelloWorld(this._io, null, null);
    this.two = new ParamsDefUsertypeImported_.ParamsDefUsertypeImported(this._io, null, null, this.hw);
  }

  return ImportsParamsDefUsertypeImported;
})();
ImportsParamsDefUsertypeImported_.ImportsParamsDefUsertypeImported = ImportsParamsDefUsertypeImported;
});

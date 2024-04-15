// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './HelloWorld', './ParamsDefArrayUsertypeImported'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./HelloWorld'), require('./ParamsDefArrayUsertypeImported'));
  } else {
    factory(root.ImportsParamsDefArrayUsertypeImported || (root.ImportsParamsDefArrayUsertypeImported = {}), root.KaitaiStream, root.HelloWorld || (root.HelloWorld = {}), root.ParamsDefArrayUsertypeImported || (root.ParamsDefArrayUsertypeImported = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsParamsDefArrayUsertypeImported_, KaitaiStream, HelloWorld_, ParamsDefArrayUsertypeImported_) {
var ImportsParamsDefArrayUsertypeImported = (function() {
  function ImportsParamsDefArrayUsertypeImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsParamsDefArrayUsertypeImported.prototype._read = function() {
    this.hws = [];
    for (var i = 0; i < 2; i++) {
      this.hws.push(new HelloWorld_.HelloWorld(this._io, null, null));
    }
    this.two = new ParamsDefArrayUsertypeImported_.ParamsDefArrayUsertypeImported(this._io, null, null, this.hws);
  }

  return ImportsParamsDefArrayUsertypeImported;
})();
ImportsParamsDefArrayUsertypeImported_.ImportsParamsDefArrayUsertypeImported = ImportsParamsDefArrayUsertypeImported;
});

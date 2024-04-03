// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './CastToImported', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./CastToImported'), require('./HelloWorld'));
  } else {
    factory(root.ImportsCastToImported || (root.ImportsCastToImported = {}), root.KaitaiStream, root.CastToImported || (root.CastToImported = {}), root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsCastToImported_, KaitaiStream, CastToImported_, HelloWorld_) {
var ImportsCastToImported = (function() {
  function ImportsCastToImported(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCastToImported.prototype._read = function() {
    this.hw = new HelloWorld_.HelloWorld(this._io, null, null);
    this.two = new CastToImported_.CastToImported(this._io, null, null, this.hw);
  }

  return ImportsCastToImported;
})();
ImportsCastToImported_.ImportsCastToImported = ImportsCastToImported;
});

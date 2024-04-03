// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', './CastToImported2', './HelloWorld'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('./CastToImported2'), require('./HelloWorld'));
  } else {
    factory(root.ImportsCastToImported2 || (root.ImportsCastToImported2 = {}), root.KaitaiStream, root.CastToImported2 || (root.CastToImported2 = {}), root.HelloWorld || (root.HelloWorld = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ImportsCastToImported2_, KaitaiStream, CastToImported2_, HelloWorld_) {
var ImportsCastToImported2 = (function() {
  function ImportsCastToImported2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ImportsCastToImported2.prototype._read = function() {
    this.hw = new HelloWorld_.HelloWorld(this._io, null, null);
    this.two = new CastToImported2_.CastToImported2(this._io, null, null, this.hw);
  }

  return ImportsCastToImported2;
})();
ImportsCastToImported2_.ImportsCastToImported2 = ImportsCastToImported2;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', 'CustomFxNoArgs'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('CustomFxNoArgs'));
  } else {
    factory(root.ProcessCustomNoArgs || (root.ProcessCustomNoArgs = {}), root.KaitaiStream, root.CustomFxNoArgs || (root.CustomFxNoArgs = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessCustomNoArgs_, KaitaiStream, CustomFxNoArgs_) {
var ProcessCustomNoArgs = (function() {
  function ProcessCustomNoArgs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCustomNoArgs.prototype._read = function() {
    this._raw_buf = this._io.readBytes(5);
    var _process = new CustomFxNoArgs_.CustomFxNoArgs();
    this.buf = _process.decode(this._raw_buf);
  }

  return ProcessCustomNoArgs;
})();
ProcessCustomNoArgs_.ProcessCustomNoArgs = ProcessCustomNoArgs;
});

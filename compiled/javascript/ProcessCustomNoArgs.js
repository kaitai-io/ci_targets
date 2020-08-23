// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', 'CustomFxNoArgs'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('CustomFxNoArgs'));
  } else {
    root.ProcessCustomNoArgs = factory(root.KaitaiStream, root.CustomFxNoArgs);
  }
}(this, function (KaitaiStream, CustomFxNoArgs) {
var ProcessCustomNoArgs = (function() {
  function ProcessCustomNoArgs(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCustomNoArgs.prototype._read = function() {
    this._raw_buf = this._io.readBytes(5);
    var _process = new CustomFxNoArgs();
    this.buf = _process.decode(this._raw_buf);
  }

  return ProcessCustomNoArgs;
})();
return ProcessCustomNoArgs;
}));

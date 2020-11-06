// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream', 'MyCustomFx', 'nested-deeply/CustomFx'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'), require('MyCustomFx'), require('nested-deeply/CustomFx'));
  } else {
    root.ProcessCustom = factory(root.KaitaiStream, root.MyCustomFx, root.CustomFx);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream, MyCustomFx, CustomFx) {
var ProcessCustom = (function() {
  function ProcessCustom(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCustom.prototype._read = function() {
    this._raw_buf1 = this._io.readBytes(5);
    var _process = new MyCustomFx(7, true, [32, 48, 64]);
    this.buf1 = _process.decode(this._raw_buf1);
    this._raw_buf2 = this._io.readBytes(5);
    var _process = new CustomFx(7);
    this.buf2 = _process.decode(this._raw_buf2);
    this.key = this._io.readU1();
    this._raw_buf3 = this._io.readBytes(5);
    var _process = new MyCustomFx(this.key, false, [0]);
    this.buf3 = _process.decode(this._raw_buf3);
  }

  return ProcessCustom;
})();
return ProcessCustom;
}));

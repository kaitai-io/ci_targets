// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', 'MyCustomFx', 'nested-deeply/CustomFx'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('MyCustomFx'), require('nested-deeply/CustomFx'));
  } else {
    factory(root.ProcessCustom || (root.ProcessCustom = {}), root.KaitaiStream, root.MyCustomFx || (root.MyCustomFx = {}), root.CustomFx || (root.CustomFx = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessCustom_, KaitaiStream, MyCustomFx_, CustomFx_) {
var ProcessCustom = (function() {
  function ProcessCustom(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessCustom.prototype._read = function() {
    this._raw_buf1 = this._io.readBytes(5);
    var _process = new MyCustomFx_.MyCustomFx(7, true, new Uint8Array([32, 48, 64]));
    this.buf1 = _process.decode(this._raw_buf1);
    this._raw_buf2 = this._io.readBytes(5);
    var _process = new CustomFx_.CustomFx(7);
    this.buf2 = _process.decode(this._raw_buf2);
    this.key = this._io.readU1();
    this._raw_buf3 = this._io.readBytes(5);
    var _process = new MyCustomFx_.MyCustomFx(this.key, false, new Uint8Array([0]));
    this.buf3 = _process.decode(this._raw_buf3);
  }

  return ProcessCustom;
})();
ProcessCustom_.ProcessCustom = ProcessCustom;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', 'MyCustomFx'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('MyCustomFx'));
  } else {
    factory(root.ProcessTermStruct || (root.ProcessTermStruct = {}), root.KaitaiStream, root.MyCustomFx || (root.MyCustomFx = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessTermStruct_, KaitaiStream, MyCustomFx_) {
var ProcessTermStruct = (function() {
  function ProcessTermStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessTermStruct.prototype._read = function() {
    this._raw__raw_s1 = this._io.readBytesTerm(124, false, true, true);
    var _process = new MyCustomFx_.MyCustomFx(32, false, new Uint8Array([0]));
    this._raw_s1 = _process.decode(this._raw__raw_s1);
    var _io__raw_s1 = new KaitaiStream(this._raw_s1);
    this.s1 = new BytesWrapper(_io__raw_s1, this, this._root);
    this._raw__raw_s2 = this._io.readBytesTerm(124, false, false, true);
    var _process = new MyCustomFx_.MyCustomFx(32, false, new Uint8Array([0]));
    this._raw_s2 = _process.decode(this._raw__raw_s2);
    var _io__raw_s2 = new KaitaiStream(this._raw_s2);
    this.s2 = new BytesWrapper(_io__raw_s2, this, this._root);
    this._raw__raw_s3 = this._io.readBytesTerm(64, true, true, true);
    var _process = new MyCustomFx_.MyCustomFx(32, false, new Uint8Array([0]));
    this._raw_s3 = _process.decode(this._raw__raw_s3);
    var _io__raw_s3 = new KaitaiStream(this._raw_s3);
    this.s3 = new BytesWrapper(_io__raw_s3, this, this._root);
  }

  var BytesWrapper = ProcessTermStruct.BytesWrapper = (function() {
    function BytesWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BytesWrapper.prototype._read = function() {
      this.value = this._io.readBytesFull();
    }

    return BytesWrapper;
  })();

  return ProcessTermStruct;
})();
ProcessTermStruct_.ProcessTermStruct = ProcessTermStruct;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassArrayInt || (root.ParamsPassArrayInt = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassArrayInt_, KaitaiStream) {
var ParamsPassArrayInt = (function() {
  function ParamsPassArrayInt(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassArrayInt.prototype._read = function() {
    this.ints = [];
    for (var i = 0; i < 3; i++) {
      this.ints.push(this._io.readU2le());
    }
    this.passInts = new WantsInts(this._io, this, this._root, this.ints);
    this.passIntsCalc = new WantsInts(this._io, this, this._root, this.intsCalc);
  }

  var WantsInts = ParamsPassArrayInt.WantsInts = (function() {
    function WantsInts(_io, _parent, _root, nums) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.nums = nums;

      this._read();
    }
    WantsInts.prototype._read = function() {
    }

    return WantsInts;
  })();
  Object.defineProperty(ParamsPassArrayInt.prototype, 'intsCalc', {
    get: function() {
      if (this._m_intsCalc !== undefined)
        return this._m_intsCalc;
      this._m_intsCalc = [27643, 7];
      return this._m_intsCalc;
    }
  });

  return ParamsPassArrayInt;
})();
ParamsPassArrayInt_.ParamsPassArrayInt = ParamsPassArrayInt;
});

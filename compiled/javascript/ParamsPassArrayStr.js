// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ParamsPassArrayStr || (root.ParamsPassArrayStr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ParamsPassArrayStr_, KaitaiStream) {
var ParamsPassArrayStr = (function() {
  function ParamsPassArrayStr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ParamsPassArrayStr.prototype._read = function() {
    this.strArray = [];
    for (var i = 0; i < 3; i++) {
      this.strArray.push(KaitaiStream.bytesToStr(this._io.readBytes(2), "ASCII"));
    }
    this.passStrArray = new WantsStrs(this._io, this, this._root, this.strArray);
    this.passStrArrayCalc = new WantsStrs(this._io, this, this._root, this.strArrayCalc);
  }

  var WantsStrs = ParamsPassArrayStr.WantsStrs = (function() {
    function WantsStrs(_io, _parent, _root, strs) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this.strs = strs;

      this._read();
    }
    WantsStrs.prototype._read = function() {
    }

    return WantsStrs;
  })();
  Object.defineProperty(ParamsPassArrayStr.prototype, 'strArrayCalc', {
    get: function() {
      if (this._m_strArrayCalc !== undefined)
        return this._m_strArrayCalc;
      this._m_strArrayCalc = ["aB", "Cd"];
      return this._m_strArrayCalc;
    }
  });

  return ParamsPassArrayStr;
})();
ParamsPassArrayStr_.ParamsPassArrayStr = ParamsPassArrayStr;
});

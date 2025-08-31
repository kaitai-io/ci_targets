// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceInRepeatUntil || (root.InstanceInRepeatUntil = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceInRepeatUntil_, KaitaiStream) {
var InstanceInRepeatUntil = (function() {
  function InstanceInRepeatUntil(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceInRepeatUntil.prototype._read = function() {
    this.entries = [];
    var i = 0;
    do {
      var _ = this._io.readS2le();
      this.entries.push(_);
      i++;
    } while (!(_ == this.untilVal));
  }
  Object.defineProperty(InstanceInRepeatUntil.prototype, 'untilVal', {
    get: function() {
      if (this._m_untilVal !== undefined)
        return this._m_untilVal;
      var _pos = this._io.pos;
      this._io.seek(this._io.pos + 12);
      this._m_untilVal = this._io.readS2le();
      this._io.seek(_pos);
      return this._m_untilVal;
    }
  });

  return InstanceInRepeatUntil;
})();
InstanceInRepeatUntil_.InstanceInRepeatUntil = InstanceInRepeatUntil;
});

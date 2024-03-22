// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.FloatingPoints || (root.FloatingPoints = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (FloatingPoints_, KaitaiStream) {
var FloatingPoints = (function() {
  function FloatingPoints(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  FloatingPoints.prototype._read = function() {
    this.singleValue = this._io.readF4le();
    this.doubleValue = this._io.readF8le();
    this.singleValueBe = this._io.readF4be();
    this.doubleValueBe = this._io.readF8be();
    this.approximateValue = this._io.readF4le();
  }
  Object.defineProperty(FloatingPoints.prototype, 'doubleValuePlusFloat', {
    get: function() {
      if (this._m_doubleValuePlusFloat !== undefined)
        return this._m_doubleValuePlusFloat;
      this._m_doubleValuePlusFloat = this.doubleValue + 0.05;
      return this._m_doubleValuePlusFloat;
    }
  });
  Object.defineProperty(FloatingPoints.prototype, 'singleValuePlusFloat', {
    get: function() {
      if (this._m_singleValuePlusFloat !== undefined)
        return this._m_singleValuePlusFloat;
      this._m_singleValuePlusFloat = this.singleValue + 0.5;
      return this._m_singleValuePlusFloat;
    }
  });
  Object.defineProperty(FloatingPoints.prototype, 'singleValuePlusInt', {
    get: function() {
      if (this._m_singleValuePlusInt !== undefined)
        return this._m_singleValuePlusInt;
      this._m_singleValuePlusInt = this.singleValue + 1;
      return this._m_singleValuePlusInt;
    }
  });

  return FloatingPoints;
})();
FloatingPoints_.FloatingPoints = FloatingPoints;
});

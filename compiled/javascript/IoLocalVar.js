// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.IoLocalVar || (root.IoLocalVar = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (IoLocalVar_, KaitaiStream) {
var IoLocalVar = (function() {
  function IoLocalVar(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IoLocalVar.prototype._read = function() {
    this.skip = this._io.readBytes(20);
    if (this.messUp._io.pos < 0) {
      this.alwaysNull = this._io.readU1();
    }
    this.followup = this._io.readU1();
  }

  var Dummy = IoLocalVar.Dummy = (function() {
    function Dummy(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Dummy.prototype._read = function() {
    }

    return Dummy;
  })();
  Object.defineProperty(IoLocalVar.prototype, 'messUp', {
    get: function() {
      if (this._m_messUp !== undefined)
        return this._m_messUp;
      var io = this._root._io;
      var _pos = io.pos;
      io.seek(8);
      switch (2) {
      case 1:
        this._raw__m_messUp = io.readBytes(2);
        var _io__raw__m_messUp = new KaitaiStream(this._raw__m_messUp);
        this._m_messUp = new Dummy(_io__raw__m_messUp, this, this._root);
        break;
      case 2:
        this._raw__m_messUp = io.readBytes(2);
        var _io__raw__m_messUp = new KaitaiStream(this._raw__m_messUp);
        this._m_messUp = new Dummy(_io__raw__m_messUp, this, this._root);
        break;
      default:
        this._m_messUp = io.readBytes(2);
        break;
      }
      io.seek(_pos);
      return this._m_messUp;
    }
  });

  return IoLocalVar;
})();
IoLocalVar_.IoLocalVar = IoLocalVar;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIoEof || (root.ExprIoEof = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIoEof_, KaitaiStream) {
var ExprIoEof = (function() {
  function ExprIoEof(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIoEof.prototype._read = function() {
    this._raw_substream1 = this._io.readBytes(4);
    var _io__raw_substream1 = new KaitaiStream(this._raw_substream1);
    this.substream1 = new OneOrTwo(_io__raw_substream1, this, this._root);
    this._raw_substream2 = this._io.readBytes(8);
    var _io__raw_substream2 = new KaitaiStream(this._raw_substream2);
    this.substream2 = new OneOrTwo(_io__raw_substream2, this, this._root);
  }

  var OneOrTwo = ExprIoEof.OneOrTwo = (function() {
    function OneOrTwo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    OneOrTwo.prototype._read = function() {
      this.one = this._io.readU4le();
      if (!(this._io.isEof())) {
        this.two = this._io.readU4le();
      }
    }
    Object.defineProperty(OneOrTwo.prototype, 'reflectEof', {
      get: function() {
        if (this._m_reflectEof !== undefined)
          return this._m_reflectEof;
        this._m_reflectEof = this._io.isEof();
        return this._m_reflectEof;
      }
    });

    return OneOrTwo;
  })();

  return ExprIoEof;
})();
ExprIoEof_.ExprIoEof = ExprIoEof;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.PositionInSeq || (root.PositionInSeq = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (PositionInSeq_, KaitaiStream) {
var PositionInSeq = (function() {
  function PositionInSeq(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  PositionInSeq.prototype._read = function() {
    this.numbers = [];
    for (var i = 0; i < this.header.qtyNumbers; i++) {
      this.numbers.push(this._io.readU1());
    }
  }

  var HeaderObj = PositionInSeq.HeaderObj = (function() {
    function HeaderObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    HeaderObj.prototype._read = function() {
      this.qtyNumbers = this._io.readU4le();
    }

    return HeaderObj;
  })();
  Object.defineProperty(PositionInSeq.prototype, 'header', {
    get: function() {
      if (this._m_header !== undefined)
        return this._m_header;
      var _pos = this._io.pos;
      this._io.seek(16);
      this._m_header = new HeaderObj(this._io, this, this._root);
      this._io.seek(_pos);
      return this._m_header;
    }
  });

  return PositionInSeq;
})();
PositionInSeq_.PositionInSeq = PositionInSeq;
});

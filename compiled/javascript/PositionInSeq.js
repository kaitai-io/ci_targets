// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var PositionInSeq = (function() {
  function PositionInSeq(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  PositionInSeq.prototype._read = function() {
    this.numbers = new Array(this.header.qtyNumbers);
    for (var i = 0; i < this.header.qtyNumbers; i++) {
      this.numbers[i] = this._io.readU1();
    }
  }

  var HeaderObj = PositionInSeq.HeaderObj = (function() {
    function HeaderObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

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

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('PositionInSeq', [], function() {
    return PositionInSeq;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = PositionInSeq;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ExprBytesCmp = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ExprBytesCmp = (function() {
  function ExprBytesCmp(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprBytesCmp.prototype._read = function() {
    this.one = this._io.readBytes(1);
    this.two = this._io.readBytes(3);
  }
  Object.defineProperty(ExprBytesCmp.prototype, 'isLe', {
    get: function() {
      if (this._m_isLe !== undefined)
        return this._m_isLe;
      this._m_isLe = (KaitaiStream.byteArrayCompare(this.two, this.ack2) <= 0);
      return this._m_isLe;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'ack', {
    get: function() {
      if (this._m_ack !== undefined)
        return this._m_ack;
      this._m_ack = [65, 67, 75];
      return this._m_ack;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isGt2', {
    get: function() {
      if (this._m_isGt2 !== undefined)
        return this._m_isGt2;
      this._m_isGt2 = (KaitaiStream.byteArrayCompare(this.hiVal, this.two) > 0);
      return this._m_isGt2;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isGt', {
    get: function() {
      if (this._m_isGt !== undefined)
        return this._m_isGt;
      this._m_isGt = (KaitaiStream.byteArrayCompare(this.two, this.ack2) > 0);
      return this._m_isGt;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'ack2', {
    get: function() {
      if (this._m_ack2 !== undefined)
        return this._m_ack2;
      this._m_ack2 = [65, 67, 75, 50];
      return this._m_ack2;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isEq', {
    get: function() {
      if (this._m_isEq !== undefined)
        return this._m_isEq;
      this._m_isEq = (KaitaiStream.byteArrayCompare(this.two, this.ack) == 0);
      return this._m_isEq;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isLt2', {
    get: function() {
      if (this._m_isLt2 !== undefined)
        return this._m_isLt2;
      this._m_isLt2 = (KaitaiStream.byteArrayCompare(this.one, this.two) < 0);
      return this._m_isLt2;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isGe', {
    get: function() {
      if (this._m_isGe !== undefined)
        return this._m_isGe;
      this._m_isGe = (KaitaiStream.byteArrayCompare(this.two, this.ack2) >= 0);
      return this._m_isGe;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'hiVal', {
    get: function() {
      if (this._m_hiVal !== undefined)
        return this._m_hiVal;
      this._m_hiVal = [144, 67];
      return this._m_hiVal;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isNe', {
    get: function() {
      if (this._m_isNe !== undefined)
        return this._m_isNe;
      this._m_isNe = (KaitaiStream.byteArrayCompare(this.two, this.ack) != 0);
      return this._m_isNe;
    }
  });
  Object.defineProperty(ExprBytesCmp.prototype, 'isLt', {
    get: function() {
      if (this._m_isLt !== undefined)
        return this._m_isLt;
      this._m_isLt = (KaitaiStream.byteArrayCompare(this.two, this.ack2) < 0);
      return this._m_isLt;
    }
  });

  return ExprBytesCmp;
})();
return ExprBytesCmp;
}));

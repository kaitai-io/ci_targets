// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Expr3 = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var Expr3 = (function() {
  function Expr3(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Expr3.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = KaitaiStream.bytesToStr(this._io.readBytes(3), "ASCII");
  }
  Object.defineProperty(Expr3.prototype, 'three', {
    get: function() {
      if (this._m_three !== undefined)
        return this._m_three;
      this._m_three = "@" + this.two;
      return this._m_three;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrGe', {
    get: function() {
      if (this._m_isStrGe !== undefined)
        return this._m_isStrGe;
      this._m_isStrGe = this.two >= "ACK2";
      return this._m_isStrGe;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrNe', {
    get: function() {
      if (this._m_isStrNe !== undefined)
        return this._m_isStrNe;
      this._m_isStrNe = this.two != "ACK";
      return this._m_isStrNe;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrGt', {
    get: function() {
      if (this._m_isStrGt !== undefined)
        return this._m_isStrGt;
      this._m_isStrGt = this.two > "ACK2";
      return this._m_isStrGt;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrLe', {
    get: function() {
      if (this._m_isStrLe !== undefined)
        return this._m_isStrLe;
      this._m_isStrLe = this.two <= "ACK2";
      return this._m_isStrLe;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrLt2', {
    get: function() {
      if (this._m_isStrLt2 !== undefined)
        return this._m_isStrLt2;
      this._m_isStrLt2 = this.three < this.two;
      return this._m_isStrLt2;
    }
  });
  Object.defineProperty(Expr3.prototype, 'testNot', {
    get: function() {
      if (this._m_testNot !== undefined)
        return this._m_testNot;
      this._m_testNot = !(false);
      return this._m_testNot;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrLt', {
    get: function() {
      if (this._m_isStrLt !== undefined)
        return this._m_isStrLt;
      this._m_isStrLt = this.two < "ACK2";
      return this._m_isStrLt;
    }
  });
  Object.defineProperty(Expr3.prototype, 'four', {
    get: function() {
      if (this._m_four !== undefined)
        return this._m_four;
      this._m_four = "_" + this.two + "_";
      return this._m_four;
    }
  });
  Object.defineProperty(Expr3.prototype, 'isStrEq', {
    get: function() {
      if (this._m_isStrEq !== undefined)
        return this._m_isStrEq;
      this._m_isStrEq = this.two == "ACK";
      return this._m_isStrEq;
    }
  });

  return Expr3;
})();
return Expr3;
}));

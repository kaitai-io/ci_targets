// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var Expr2 = (function() {
  function Expr2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Expr2.prototype._read = function() {
    this.str1 = new ModStr(this._io, this, this._root);
    this.str2 = new ModStr(this._io, this, this._root);
  }

  var ModStr = Expr2.ModStr = (function() {
    function ModStr(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ModStr.prototype._read = function() {
      this.lenOrig = this._io.readU2le();
      this.str = KaitaiStream.bytesToStr(this._io.readBytes(this.lenMod), "UTF-8");
      this._raw_rest = this._io.readBytes(3);
      var _io__raw_rest = new KaitaiStream(this._raw_rest);
      this.rest = new Tuple(_io__raw_rest, this, this._root);
    }
    Object.defineProperty(ModStr.prototype, 'lenMod', {
      get: function() {
        if (this._m_lenMod !== undefined)
          return this._m_lenMod;
        this._m_lenMod = (this.lenOrig - 3);
        return this._m_lenMod;
      }
    });
    Object.defineProperty(ModStr.prototype, 'char5', {
      get: function() {
        if (this._m_char5 !== undefined)
          return this._m_char5;
        var _pos = this._io.pos;
        this._io.seek(5);
        this._m_char5 = KaitaiStream.bytesToStr(this._io.readBytes(1), "ASCII");
        this._io.seek(_pos);
        return this._m_char5;
      }
    });
    Object.defineProperty(ModStr.prototype, 'tuple5', {
      get: function() {
        if (this._m_tuple5 !== undefined)
          return this._m_tuple5;
        var _pos = this._io.pos;
        this._io.seek(5);
        this._m_tuple5 = new Tuple(this._io, this, this._root);
        this._io.seek(_pos);
        return this._m_tuple5;
      }
    });

    return ModStr;
  })();

  var Tuple = Expr2.Tuple = (function() {
    function Tuple(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Tuple.prototype._read = function() {
      this.byte0 = this._io.readU1();
      this.byte1 = this._io.readU1();
      this.byte2 = this._io.readU1();
    }
    Object.defineProperty(Tuple.prototype, 'avg', {
      get: function() {
        if (this._m_avg !== undefined)
          return this._m_avg;
        this._m_avg = Math.floor((this.byte1 + this.byte2) / 2);
        return this._m_avg;
      }
    });

    return Tuple;
  })();
  Object.defineProperty(Expr2.prototype, 'str1LenMod', {
    get: function() {
      if (this._m_str1LenMod !== undefined)
        return this._m_str1LenMod;
      this._m_str1LenMod = this.str1.lenMod;
      return this._m_str1LenMod;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str1Len', {
    get: function() {
      if (this._m_str1Len !== undefined)
        return this._m_str1Len;
      this._m_str1Len = this.str1.str.length;
      return this._m_str1Len;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str1Tuple5', {
    get: function() {
      if (this._m_str1Tuple5 !== undefined)
        return this._m_str1Tuple5;
      this._m_str1Tuple5 = this.str1.tuple5;
      return this._m_str1Tuple5;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str2Tuple5', {
    get: function() {
      if (this._m_str2Tuple5 !== undefined)
        return this._m_str2Tuple5;
      this._m_str2Tuple5 = this.str2.tuple5;
      return this._m_str2Tuple5;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str1Avg', {
    get: function() {
      if (this._m_str1Avg !== undefined)
        return this._m_str1Avg;
      this._m_str1Avg = this.str1.rest.avg;
      return this._m_str1Avg;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str1Byte1', {
    get: function() {
      if (this._m_str1Byte1 !== undefined)
        return this._m_str1Byte1;
      this._m_str1Byte1 = this.str1.rest.byte1;
      return this._m_str1Byte1;
    }
  });
  Object.defineProperty(Expr2.prototype, 'str1Char5', {
    get: function() {
      if (this._m_str1Char5 !== undefined)
        return this._m_str1Char5;
      this._m_str1Char5 = this.str1.char5;
      return this._m_str1Char5;
    }
  });

  return Expr2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Expr2', [], function() {
    return Expr2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Expr2;
}

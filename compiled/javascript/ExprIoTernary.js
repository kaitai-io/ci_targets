// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprIoTernary || (root.ExprIoTernary = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprIoTernary_, KaitaiStream) {
var ExprIoTernary = (function() {
  function ExprIoTernary(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprIoTernary.prototype._read = function() {
    this.flag = this._io.readU1();
    this._raw_obj1 = this._io.readBytes(4);
    var _io__raw_obj1 = new KaitaiStream(this._raw_obj1);
    this.obj1 = new One(_io__raw_obj1, this, this._root);
    this._raw_obj2 = this._io.readBytes(8);
    var _io__raw_obj2 = new KaitaiStream(this._raw_obj2);
    this.obj2 = new Two(_io__raw_obj2, this, this._root);
  }

  var One = ExprIoTernary.One = (function() {
    function One(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    One.prototype._read = function() {
      this.one = this._io.readU1();
    }

    return One;
  })();

  var Two = ExprIoTernary.Two = (function() {
    function Two(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Two.prototype._read = function() {
      this.two = this._io.readU1();
    }

    return Two;
  })();
  Object.defineProperty(ExprIoTernary.prototype, 'oneOrTwoIo', {
    get: function() {
      if (this._m_oneOrTwoIo !== undefined)
        return this._m_oneOrTwoIo;
      this._m_oneOrTwoIo = (this.flag == 64 ? this.obj1 : this.obj2)._io;
      return this._m_oneOrTwoIo;
    }
  });
  Object.defineProperty(ExprIoTernary.prototype, 'oneOrTwoIoSize1', {
    get: function() {
      if (this._m_oneOrTwoIoSize1 !== undefined)
        return this._m_oneOrTwoIoSize1;
      this._m_oneOrTwoIoSize1 = (this.flag == 64 ? this.obj1 : this.obj2)._io.size;
      return this._m_oneOrTwoIoSize1;
    }
  });
  Object.defineProperty(ExprIoTernary.prototype, 'oneOrTwoIoSize2', {
    get: function() {
      if (this._m_oneOrTwoIoSize2 !== undefined)
        return this._m_oneOrTwoIoSize2;
      this._m_oneOrTwoIoSize2 = this.oneOrTwoIo.size;
      return this._m_oneOrTwoIoSize2;
    }
  });
  Object.defineProperty(ExprIoTernary.prototype, 'oneOrTwoIoSizeAdd3', {
    get: function() {
      if (this._m_oneOrTwoIoSizeAdd3 !== undefined)
        return this._m_oneOrTwoIoSizeAdd3;
      this._m_oneOrTwoIoSizeAdd3 = (this.flag == 64 ? this.obj1 : this.obj2)._io.size + 3;
      return this._m_oneOrTwoIoSizeAdd3;
    }
  });
  Object.defineProperty(ExprIoTernary.prototype, 'oneOrTwoObj', {
    get: function() {
      if (this._m_oneOrTwoObj !== undefined)
        return this._m_oneOrTwoObj;
      this._m_oneOrTwoObj = (this.flag == 64 ? this.obj1 : this.obj2);
      return this._m_oneOrTwoObj;
    }
  });

  return ExprIoTernary;
})();
ExprIoTernary_.ExprIoTernary = ExprIoTernary;
});

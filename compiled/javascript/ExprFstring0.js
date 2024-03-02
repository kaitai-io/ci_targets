// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ExprFstring0 || (root.ExprFstring0 = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ExprFstring0_, KaitaiStream) {
var ExprFstring0 = (function() {
  function ExprFstring0(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ExprFstring0.prototype._read = function() {
    this.seqStr = KaitaiStream.bytesToStr(this._io.readBytes(5), "ASCII");
    this.seqInt = this._io.readU1();
  }
  Object.defineProperty(ExprFstring0.prototype, 'empty', {
    get: function() {
      if (this._m_empty !== undefined)
        return this._m_empty;
      this._m_empty = "";
      return this._m_empty;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'headAndInt', {
    get: function() {
      if (this._m_headAndInt !== undefined)
        return this._m_headAndInt;
      this._m_headAndInt = "abc=" + (this.seqInt).toString(10);
      return this._m_headAndInt;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'headAndIntLiteral', {
    get: function() {
      if (this._m_headAndIntLiteral !== undefined)
        return this._m_headAndIntLiteral;
      this._m_headAndIntLiteral = "abc=" + (123).toString(10);
      return this._m_headAndIntLiteral;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'headAndStr', {
    get: function() {
      if (this._m_headAndStr !== undefined)
        return this._m_headAndStr;
      this._m_headAndStr = "abc=" + this.seqStr;
      return this._m_headAndStr;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'headAndStrLiteral', {
    get: function() {
      if (this._m_headAndStrLiteral !== undefined)
        return this._m_headAndStrLiteral;
      this._m_headAndStrLiteral = "abc=" + "foo";
      return this._m_headAndStrLiteral;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'literal', {
    get: function() {
      if (this._m_literal !== undefined)
        return this._m_literal;
      this._m_literal = "abc";
      return this._m_literal;
    }
  });
  Object.defineProperty(ExprFstring0.prototype, 'literalWithEscapes', {
    get: function() {
      if (this._m_literalWithEscapes !== undefined)
        return this._m_literalWithEscapes;
      this._m_literalWithEscapes = "abc\n\tt";
      return this._m_literalWithEscapes;
    }
  });

  return ExprFstring0;
})();
ExprFstring0_.ExprFstring0 = ExprFstring0;
});

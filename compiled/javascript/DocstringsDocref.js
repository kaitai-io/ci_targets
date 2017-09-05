// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.DocstringsDocref = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
/**
 * Another one-liner
 * @see {@link http://www.example.com/some/path/?even_with=query&more=2|Source}
 */

var DocstringsDocref = (function() {
  function DocstringsDocref(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  DocstringsDocref.prototype._read = function() {
    this.one = this._io.readU1();
    this.two = this._io.readU1();
    this.three = this._io.readU1();
  }

  /**
   * @see Doc ref for instance, a plain one
   */
  Object.defineProperty(DocstringsDocref.prototype, 'foo', {
    get: function() {
      if (this._m_foo !== undefined)
        return this._m_foo;
      this._m_foo = true;
      return this._m_foo;
    }
  });

  /**
   * @see Now this is a really
   * long document ref that
   * spans multiple lines.
   */
  Object.defineProperty(DocstringsDocref.prototype, 'parseInst', {
    get: function() {
      if (this._m_parseInst !== undefined)
        return this._m_parseInst;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_parseInst = this._io.readU1();
      this._io.seek(_pos);
      return this._m_parseInst;
    }
  });

  /**
   * @see Plain text description of doc ref, page 42
   */

  /**
   * Both doc and doc-ref are defined
   * @see {@link http://www.example.com/with/url/again|Source}
   */

  /**
   * @see {@link http://www.example.com/three|Documentation name}
   */

  return DocstringsDocref;
})();
return DocstringsDocref;
}));

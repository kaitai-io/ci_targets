// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

/**
 * One-liner description of a type.
 */

var Docstrings = (function() {
  function Docstrings(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Docstrings.prototype._read = function() {
    this.one = this._io.readU1();
  }

  /**
   * This subtype is never used, yet has a very long description
   * that spans multiple lines. It should be formatted accordingly,
   * even in languages that have single-line comments for
   * docstrings. Actually, there's even a MarkDown-style list here
   * with several bullets:
   * 
   * * one
   * * two
   * * three
   * 
   * And the text continues after that. Here's a MarkDown-style link:
   * [woohoo](http://example.com) - one day it will be supported as
   * well.
   */

  var ComplexSubtype = Docstrings.ComplexSubtype = (function() {
    function ComplexSubtype(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ComplexSubtype.prototype._read = function() {
    }

    return ComplexSubtype;
  })();

  /**
   * Another description for parse instance "two"
   */
  Object.defineProperty(Docstrings.prototype, 'two', {
    get: function() {
      if (this._m_two !== undefined)
        return this._m_two;
      var _pos = this._io.pos;
      this._io.seek(0);
      this._m_two = this._io.readU1();
      this._io.seek(_pos);
      return this._m_two;
    }
  });

  /**
   * And yet another one for value instance "three"
   */
  Object.defineProperty(Docstrings.prototype, 'three', {
    get: function() {
      if (this._m_three !== undefined)
        return this._m_three;
      this._m_three = 66;
      return this._m_three;
    }
  });

  /**
   * A pretty verbose description for sequence attribute "one"
   */

  return Docstrings;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('Docstrings', [], function() {
    return Docstrings;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = Docstrings;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var NavParent2 = (function() {
  function NavParent2(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this.ofsTags = this._io.readU4le();
    this.numTags = this._io.readU4le();
    this.tags = new Array(this.numTags);
    for (var i = 0; i < this.numTags; i++) {
      this.tags[i] = new Tag(this._io, this, this._root);
    }
  }

  var Tag = NavParent2.Tag = (function() {
    function Tag(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this.name = KaitaiStream.bytesToStr(this._io.readBytes(4), "ASCII");
      this.ofs = this._io.readU4le();
      this.numItems = this._io.readU4le();
    }

    var TagChar = Tag.TagChar = (function() {
      function TagChar(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this.content = KaitaiStream.bytesToStr(this._io.readBytes(this._parent.numItems), "ASCII");
      }

      return TagChar;
    })();
    Object.defineProperty(Tag.prototype, 'tagContent', {
      get: function() {
        if (this._m_tagContent !== undefined)
          return this._m_tagContent;
        var io = this._root._io;
        var _pos = io.pos;
        io.seek(this.ofs);
        switch (this.name) {
        case "RAHC":
          this._m_tagContent = new TagChar(io, this, this._root);
          break;
        }
        io.seek(_pos);
        return this._m_tagContent;
      }
    });

    return Tag;
  })();

  return NavParent2;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('NavParent2', [], function() {
    return NavParent2;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = NavParent2;
}

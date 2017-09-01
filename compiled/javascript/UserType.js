// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

var UserType = (function() {
  function UserType(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  UserType.prototype._read = function() {
    this.one = new Header(this._io, this, this._root);
  }

  var Header = UserType.Header = (function() {
    function Header(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Header.prototype._read = function() {
      this.width = this._io.readU4le();
      this.height = this._io.readU4le();
    }

    return Header;
  })();

  return UserType;
})();

// Export for amd environments
if (typeof define === 'function' && define.amd) {
  define('UserType', [], function() {
    return UserType;
  });
}

// Export for CommonJS
if (typeof module === 'object' && module && module.exports) {
  module.exports = UserType;
}

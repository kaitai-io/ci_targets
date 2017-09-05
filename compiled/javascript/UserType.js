// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.UserType = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
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
return UserType;
}));

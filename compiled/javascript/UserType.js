// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.UserType || (root.UserType = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (UserType_, KaitaiStream) {
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
      this._root = _root;

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
UserType_.UserType = UserType;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.EofExceptionSwitchUser || (root.EofExceptionSwitchUser = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (EofExceptionSwitchUser_, KaitaiStream) {
var EofExceptionSwitchUser = (function() {
  function EofExceptionSwitchUser(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EofExceptionSwitchUser.prototype._read = function() {
    this.code = this._io.readU2le();
    switch (this.code) {
    case 2:
      this.data = new Two(this._io, this, this._root);
      break;
    case 511:
      this.data = new One(this._io, this, this._root);
      break;
    }
  }

  var One = EofExceptionSwitchUser.One = (function() {
    function One(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    One.prototype._read = function() {
      this.val = this._io.readS2le();
    }

    return One;
  })();

  var Two = EofExceptionSwitchUser.Two = (function() {
    function Two(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Two.prototype._read = function() {
      this.val = this._io.readU2le();
    }

    return Two;
  })();

  return EofExceptionSwitchUser;
})();
EofExceptionSwitchUser_.EofExceptionSwitchUser = EofExceptionSwitchUser;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.SwitchRepeatExpr || (root.SwitchRepeatExpr = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (SwitchRepeatExpr_, KaitaiStream) {
var SwitchRepeatExpr = (function() {
  function SwitchRepeatExpr(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchRepeatExpr.prototype._read = function() {
    this.codes = [];
    for (var i = 0; i < 3; i++) {
      this.codes.push(this._io.readU1());
    }
    this._raw_body = [];
    this.body = [];
    for (var i = 0; i < 3; i++) {
      switch (this.codes[i]) {
      case 1:
        this._raw_body.push(this._io.readBytes(4));
        var _io__raw_body = new KaitaiStream(this._raw_body[i]);
        this.body.push(new One(_io__raw_body, this, this._root));
        break;
      case 2:
        this._raw_body.push(this._io.readBytes(4));
        var _io__raw_body = new KaitaiStream(this._raw_body[i]);
        this.body.push(new One(_io__raw_body, this, this._root));
        break;
      case 7:
        this._raw_body.push(this._io.readBytes(4));
        var _io__raw_body = new KaitaiStream(this._raw_body[i]);
        this.body.push(new Two(_io__raw_body, this, this._root));
        break;
      default:
        this.body.push(this._io.readBytes(4));
        break;
      }
    }
  }

  var One = SwitchRepeatExpr.One = (function() {
    function One(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    One.prototype._read = function() {
      this.first = this._io.readBytesFull();
    }

    return One;
  })();

  var Two = SwitchRepeatExpr.Two = (function() {
    function Two(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Two.prototype._read = function() {
      this.second = this._io.readBytesFull();
    }

    return Two;
  })();

  return SwitchRepeatExpr;
})();
SwitchRepeatExpr_.SwitchRepeatExpr = SwitchRepeatExpr;
});

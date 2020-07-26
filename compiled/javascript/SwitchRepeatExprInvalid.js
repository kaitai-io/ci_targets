// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.SwitchRepeatExprInvalid = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var SwitchRepeatExprInvalid = (function() {
  function SwitchRepeatExprInvalid(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  SwitchRepeatExprInvalid.prototype._read = function() {
    this.code = this._io.readU1();
    this.size = this._io.readU4le();
    this._raw_body = new Array(1);
    this.body = new Array(1);
    for (var i = 0; i < 1; i++) {
      switch (this.code) {
      case 255:
        this._raw_body[i] = this._io.readBytes(this.size);
        var _io__raw_body = new KaitaiStream(this._raw_body[i]);
        this.body[i] = new One(_io__raw_body, this, this._root);
        break;
      case 34:
        this._raw_body[i] = this._io.readBytes(this.size);
        var _io__raw_body = new KaitaiStream(this._raw_body[i]);
        this.body[i] = new Two(_io__raw_body, this, this._root);
        break;
      default:
        this.body[i] = this._io.readBytes(this.size);
        break;
      }
    }
  }

  var One = SwitchRepeatExprInvalid.One = (function() {
    function One(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    One.prototype._read = function() {
      this.first = this._io.readBytesFull();
    }

    return One;
  })();

  var Two = SwitchRepeatExprInvalid.Two = (function() {
    function Two(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Two.prototype._read = function() {
      this.second = this._io.readBytesFull();
    }

    return Two;
  })();

  return SwitchRepeatExprInvalid;
})();
return SwitchRepeatExprInvalid;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.NavParentSwitchCast = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var NavParentSwitchCast = (function() {
  function NavParentSwitchCast(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  NavParentSwitchCast.prototype._read = function() {
    this.main = new Foo(this._io, this, this._root);
  }

  var Foo = NavParentSwitchCast.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Foo.prototype._read = function() {
      this.bufType = this._io.readU1();
      this.flag = this._io.readU1();
      switch (this.bufType) {
      case 0:
        this._raw_buf = this._io.readBytes(4);
        var _io__raw_buf = new KaitaiStream(this._raw_buf);
        this.buf = new Zero(_io__raw_buf, this, this._root);
        break;
      case 1:
        this._raw_buf = this._io.readBytes(4);
        var _io__raw_buf = new KaitaiStream(this._raw_buf);
        this.buf = new One(_io__raw_buf, this, this._root);
        break;
      default:
        this.buf = this._io.readBytes(4);
        break;
      }
    }

    var Zero = Foo.Zero = (function() {
      function Zero(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Zero.prototype._read = function() {
        this.branch = new Common(this._io, this, this._root);
      }

      return Zero;
    })();

    var One = Foo.One = (function() {
      function One(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      One.prototype._read = function() {
        this.branch = new Common(this._io, this, this._root);
      }

      return One;
    })();

    var Common = Foo.Common = (function() {
      function Common(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      Common.prototype._read = function() {
      }
      Object.defineProperty(Common.prototype, 'flag', {
        get: function() {
          if (this._m_flag !== undefined)
            return this._m_flag;
          this._m_flag = this._parent._parent.flag;
          return this._m_flag;
        }
      });

      return Common;
    })();

    return Foo;
  })();

  return NavParentSwitchCast;
})();
return NavParentSwitchCast;
}));

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceInSized || (root.InstanceInSized = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceInSized_, KaitaiStream) {
var InstanceInSized = (function() {
  function InstanceInSized(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceInSized.prototype._read = function() {
    this._raw_cont = this._io.readBytes(16);
    var _io__raw_cont = new KaitaiStream(this._raw_cont);
    this.cont = new Wrapper(_io__raw_cont, this, this._root);
  }

  var Bar = InstanceInSized.Bar = (function() {
    function Bar(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Bar.prototype._read = function() {
      this.seqF = this._io.readU1();
    }
    Object.defineProperty(Bar.prototype, 'inst', {
      get: function() {
        if (this._m_inst !== undefined)
          return this._m_inst;
        var _pos = this._io.pos;
        this._io.seek(4 + 1);
        this._m_inst = this._io.readBytes(3);
        this._io.seek(_pos);
        return this._m_inst;
      }
    });

    return Bar;
  })();

  var Baz = InstanceInSized.Baz = (function() {
    function Baz(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Baz.prototype._read = function() {
      this.seqF = this._io.readU1();
    }
    Object.defineProperty(Baz.prototype, 'inst', {
      get: function() {
        if (this._m_inst !== undefined)
          return this._m_inst;
        var _pos = this._io.pos;
        this._io.seek(8 + 1);
        this._m_inst = this._io.readBytes(3);
        this._io.seek(_pos);
        return this._m_inst;
      }
    });

    return Baz;
  })();

  var Qux = InstanceInSized.Qux = (function() {
    function Qux(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Qux.prototype._read = function() {
      if (this.instInvoked > 0) {
        this.seqF = this._io.readU1();
      }
    }
    Object.defineProperty(Qux.prototype, 'instInvoked', {
      get: function() {
        if (this._m_instInvoked !== undefined)
          return this._m_instInvoked;
        var _pos = this._io.pos;
        this._io.seek(this._io.pos + 1);
        this._m_instInvoked = this._io.readU1();
        this._io.seek(_pos);
        return this._m_instInvoked;
      }
    });
    Object.defineProperty(Qux.prototype, 'instUnusedBySeq', {
      get: function() {
        if (this._m_instUnusedBySeq !== undefined)
          return this._m_instUnusedBySeq;
        var _pos = this._io.pos;
        this._io.seek(this._io.pos + 1);
        this._m_instUnusedBySeq = this._io.readBytes(2);
        this._io.seek(_pos);
        return this._m_instUnusedBySeq;
      }
    });

    return Qux;
  })();

  var Wrapper = InstanceInSized.Wrapper = (function() {
    function Wrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Wrapper.prototype._read = function() {
      this._raw_seqSized = this._io.readBytes(4);
      var _io__raw_seqSized = new KaitaiStream(this._raw_seqSized);
      this.seqSized = new Qux(_io__raw_seqSized, this, this._root);
      this.seqInStream = new Bar(this._io, this, this._root);
    }
    Object.defineProperty(Wrapper.prototype, 'instInStream', {
      get: function() {
        if (this._m_instInStream !== undefined)
          return this._m_instInStream;
        var _pos = this._io.pos;
        this._io.seek(this._io.pos + 3);
        this._m_instInStream = new Baz(this._io, this, this._root);
        this._io.seek(_pos);
        return this._m_instInStream;
      }
    });
    Object.defineProperty(Wrapper.prototype, 'instSized', {
      get: function() {
        if (this._m_instSized !== undefined)
          return this._m_instSized;
        var _pos = this._io.pos;
        this._io.seek(this._io.pos + 7);
        this._raw__m_instSized = this._io.readBytes(4);
        var _io__raw__m_instSized = new KaitaiStream(this._raw__m_instSized);
        this._m_instSized = new Qux(_io__raw__m_instSized, this, this._root);
        this._io.seek(_pos);
        return this._m_instSized;
      }
    });

    return Wrapper;
  })();

  return InstanceInSized;
})();
InstanceInSized_.InstanceInSized = InstanceInSized;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.InstanceIoUserEarlier || (root.InstanceIoUserEarlier = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (InstanceIoUserEarlier_, KaitaiStream) {
var InstanceIoUserEarlier = (function() {
  function InstanceIoUserEarlier(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  InstanceIoUserEarlier.prototype._read = function() {
    this._raw_sizedA = this._io.readBytes(6);
    var _io__raw_sizedA = new KaitaiStream(this._raw_sizedA);
    this.sizedA = new Slot(_io__raw_sizedA, this, this._root);
    this._raw_sizedB = this._io.readBytes(6);
    var _io__raw_sizedB = new KaitaiStream(this._raw_sizedB);
    this.sizedB = new Slot(_io__raw_sizedB, this, this._root);
    this.intoB = new Foo(this._io, this, this._root);
    this.intoASkipped = new Foo(this._io, this, this._root);
    this.intoA = new Foo(this._io, this, this._root);
    this.lastAccessor = new Baz(this._io, this, this._root);
  }

  var Baz = InstanceIoUserEarlier.Baz = (function() {
    function Baz(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Baz.prototype._read = function() {
      if (this._parent.intoB.inst.last == 89) {
        this.v = this._io.readU1();
      }
    }

    return Baz;
  })();

  var Foo = InstanceIoUserEarlier.Foo = (function() {
    function Foo(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Foo.prototype._read = function() {
      this.indicator = this._io.readU1();
      if ( ((this.inst._io.size != 0) && (this.inst.content == 102)) ) {
        this.bar = this._io.readU1();
      }
    }
    Object.defineProperty(Foo.prototype, 'inst', {
      get: function() {
        if (this._m_inst !== undefined)
          return this._m_inst;
        var io = (this.indicator == 202 ? this._parent.sizedB._io : this._parent.sizedA._io);
        var _pos = io.pos;
        io.seek(1);
        this._raw__m_inst = io.readBytes((this._io.pos != 14 ? 4 : 0));
        var _io__raw__m_inst = new KaitaiStream(this._raw__m_inst);
        this._m_inst = new Slot(_io__raw__m_inst, this, this._root);
        io.seek(_pos);
        return this._m_inst;
      }
    });

    return Foo;
  })();

  var Slot = InstanceIoUserEarlier.Slot = (function() {
    function Slot(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Slot.prototype._read = function() {
      if (this._io.size != 0) {
        this.content = this._io.readU1();
      }
    }
    Object.defineProperty(Slot.prototype, 'last', {
      get: function() {
        if (this._m_last !== undefined)
          return this._m_last;
        if (this._io.size != 0) {
          var _pos = this._io.pos;
          this._io.seek(this._io.size - 1);
          this._m_last = this._io.readU1();
          this._io.seek(_pos);
        }
        return this._m_last;
      }
    });

    return Slot;
  })();
  Object.defineProperty(InstanceIoUserEarlier.prototype, 'aMid', {
    get: function() {
      if (this._m_aMid !== undefined)
        return this._m_aMid;
      var io = this.intoA.inst._io;
      var _pos = io.pos;
      io.seek(1);
      this._m_aMid = io.readU2le();
      io.seek(_pos);
      return this._m_aMid;
    }
  });
  Object.defineProperty(InstanceIoUserEarlier.prototype, 'bMid', {
    get: function() {
      if (this._m_bMid !== undefined)
        return this._m_bMid;
      var io = this.intoB.inst._io;
      var _pos = io.pos;
      io.seek(1);
      this._m_bMid = io.readU2le();
      io.seek(_pos);
      return this._m_bMid;
    }
  });

  return InstanceIoUserEarlier;
})();
InstanceIoUserEarlier_.InstanceIoUserEarlier = InstanceIoUserEarlier;
});

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessRepeatUsertypeDynargRotate || (root.ProcessRepeatUsertypeDynargRotate = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessRepeatUsertypeDynargRotate_, KaitaiStream) {
var ProcessRepeatUsertypeDynargRotate = (function() {
  function ProcessRepeatUsertypeDynargRotate(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatUsertypeDynargRotate.prototype._read = function() {
    this._raw_blocksRol = [];
    this._raw__raw_blocksRol = [];
    this.blocksRol = [];
    for (var i = 0; i < 2; i++) {
      this._raw__raw_blocksRol.push(this._io.readBytes(3));
      this._raw_blocksRol.push(KaitaiStream.processRotateLeft(this._raw__raw_blocksRol[i], this._io.pos - 4 * i, 1));
      var _io__raw_blocksRol = new KaitaiStream(this._raw_blocksRol[i]);
      this.blocksRol.push(new Block(_io__raw_blocksRol, this, this._root));
    }
    this._raw_blocksRor = [];
    this._raw__raw_blocksRor = [];
    this.blocksRor = [];
    for (var i = 0; i < 3; i++) {
      this._raw__raw_blocksRor.push(this._io.readBytes(3));
      this._raw_blocksRor.push(KaitaiStream.processRotateLeft(this._raw__raw_blocksRor[i], 8 - ((this._io.pos - 6) - 4 * i), 1));
      var _io__raw_blocksRor = new KaitaiStream(this._raw_blocksRor[i]);
      this.blocksRor.push(new Block(_io__raw_blocksRor, this, this._root));
    }
    this.blocksB = new BlocksBWrapper(this._io, this, this._root);
  }

  var Block = ProcessRepeatUsertypeDynargRotate.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Block.prototype._read = function() {
      this.a = this._io.readU2le();
    }

    return Block;
  })();

  var BlocksBWrapper = ProcessRepeatUsertypeDynargRotate.BlocksBWrapper = (function() {
    function BlocksBWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BlocksBWrapper.prototype._read = function() {
      this.dummy = this._io.readU1();
    }
    Object.defineProperty(BlocksBWrapper.prototype, 'blocksRol0B', {
      get: function() {
        if (this._m_blocksRol0B !== undefined)
          return this._m_blocksRol0B;
        var io = this._parent.blocksRol[0]._io;
        var _pos = io.pos;
        io.seek(2);
        this._m_blocksRol0B = io.readU1();
        io.seek(_pos);
        return this._m_blocksRol0B;
      }
    });
    Object.defineProperty(BlocksBWrapper.prototype, 'blocksRol1B', {
      get: function() {
        if (this._m_blocksRol1B !== undefined)
          return this._m_blocksRol1B;
        var io = this._parent.blocksRol[1]._io;
        var _pos = io.pos;
        io.seek(2);
        this._m_blocksRol1B = io.readU1();
        io.seek(_pos);
        return this._m_blocksRol1B;
      }
    });
    Object.defineProperty(BlocksBWrapper.prototype, 'blocksRor0B', {
      get: function() {
        if (this._m_blocksRor0B !== undefined)
          return this._m_blocksRor0B;
        var io = this._parent.blocksRor[0]._io;
        var _pos = io.pos;
        io.seek(2);
        this._m_blocksRor0B = io.readU1();
        io.seek(_pos);
        return this._m_blocksRor0B;
      }
    });
    Object.defineProperty(BlocksBWrapper.prototype, 'blocksRor1B', {
      get: function() {
        if (this._m_blocksRor1B !== undefined)
          return this._m_blocksRor1B;
        var io = this._parent.blocksRor[1]._io;
        var _pos = io.pos;
        io.seek(2);
        this._m_blocksRor1B = io.readU1();
        io.seek(_pos);
        return this._m_blocksRor1B;
      }
    });
    Object.defineProperty(BlocksBWrapper.prototype, 'blocksRor2B', {
      get: function() {
        if (this._m_blocksRor2B !== undefined)
          return this._m_blocksRor2B;
        var io = this._parent.blocksRor[2]._io;
        var _pos = io.pos;
        io.seek(2);
        this._m_blocksRor2B = io.readU1();
        io.seek(_pos);
        return this._m_blocksRor2B;
      }
    });

    return BlocksBWrapper;
  })();

  return ProcessRepeatUsertypeDynargRotate;
})();
ProcessRepeatUsertypeDynargRotate_.ProcessRepeatUsertypeDynargRotate = ProcessRepeatUsertypeDynargRotate;
});

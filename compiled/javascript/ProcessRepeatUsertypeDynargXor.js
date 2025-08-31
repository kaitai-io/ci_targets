// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessRepeatUsertypeDynargXor || (root.ProcessRepeatUsertypeDynargXor = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessRepeatUsertypeDynargXor_, KaitaiStream) {
var ProcessRepeatUsertypeDynargXor = (function() {
  function ProcessRepeatUsertypeDynargXor(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatUsertypeDynargXor.prototype._read = function() {
    this._raw_blocks = [];
    this._raw__raw_blocks = [];
    this.blocks = [];
    for (var i = 0; i < 2; i++) {
      this._raw__raw_blocks.push(this._io.readBytes(5));
      this._raw_blocks.push(KaitaiStream.processXorOne(this._raw__raw_blocks[i], 155 ^ (i << 4 | this._io.pos)));
      var _io__raw_blocks = new KaitaiStream(this._raw_blocks[i]);
      this.blocks.push(new Block(_io__raw_blocks, this, this._root));
    }
    this.blocksB = new BlocksBWrapper(this._io, this, this._root);
  }

  var Block = ProcessRepeatUsertypeDynargXor.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Block.prototype._read = function() {
      this.a = this._io.readU4le();
    }

    return Block;
  })();

  var BlocksBWrapper = ProcessRepeatUsertypeDynargXor.BlocksBWrapper = (function() {
    function BlocksBWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BlocksBWrapper.prototype._read = function() {
      this.dummy = this._io.readU1();
    }
    Object.defineProperty(BlocksBWrapper.prototype, 'blocks0B', {
      get: function() {
        if (this._m_blocks0B !== undefined)
          return this._m_blocks0B;
        var io = this._parent.blocks[0]._io;
        var _pos = io.pos;
        io.seek(4);
        this._m_blocks0B = io.readU1();
        io.seek(_pos);
        return this._m_blocks0B;
      }
    });
    Object.defineProperty(BlocksBWrapper.prototype, 'blocks1B', {
      get: function() {
        if (this._m_blocks1B !== undefined)
          return this._m_blocks1B;
        var io = this._parent.blocks[1]._io;
        var _pos = io.pos;
        io.seek(4);
        this._m_blocks1B = io.readU1();
        io.seek(_pos);
        return this._m_blocks1B;
      }
    });

    return BlocksBWrapper;
  })();

  return ProcessRepeatUsertypeDynargXor;
})();
ProcessRepeatUsertypeDynargXor_.ProcessRepeatUsertypeDynargXor = ProcessRepeatUsertypeDynargXor;
});

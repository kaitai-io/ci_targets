// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream', 'MyCustomFx'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'), require('MyCustomFx'));
  } else {
    factory(root.ProcessRepeatUsertypeDynargCustom || (root.ProcessRepeatUsertypeDynargCustom = {}), root.KaitaiStream, root.MyCustomFx || (root.MyCustomFx = {}));
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessRepeatUsertypeDynargCustom_, KaitaiStream, MyCustomFx_) {
var ProcessRepeatUsertypeDynargCustom = (function() {
  function ProcessRepeatUsertypeDynargCustom(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatUsertypeDynargCustom.prototype._read = function() {
    this._raw_blocks = [];
    this._raw__raw_blocks = [];
    this.blocks = [];
    for (var i = 0; i < 2; i++) {
      this._raw__raw_blocks.push(this._io.readBytes(5));
      var _process = new MyCustomFx_.MyCustomFx(this._io.pos + 13 * i, KaitaiStream.mod(this._io.pos, 2) == 0, (i == 1 ? new Uint8Array([32, 48]) : new Uint8Array([64])));
      this._raw_blocks.push(_process.decode(this._raw__raw_blocks[i]));
      var _io__raw_blocks = new KaitaiStream(this._raw_blocks[i]);
      this.blocks.push(new Block(_io__raw_blocks, this, this._root));
    }
    this.blocksB = new BlocksBWrapper(this._io, this, this._root);
  }

  var Block = ProcessRepeatUsertypeDynargCustom.Block = (function() {
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

  var BlocksBWrapper = ProcessRepeatUsertypeDynargCustom.BlocksBWrapper = (function() {
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

  return ProcessRepeatUsertypeDynargCustom;
})();
ProcessRepeatUsertypeDynargCustom_.ProcessRepeatUsertypeDynargCustom = ProcessRepeatUsertypeDynargCustom;
});

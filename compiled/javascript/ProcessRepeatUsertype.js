// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ProcessRepeatUsertype = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ProcessRepeatUsertype = (function() {
  function ProcessRepeatUsertype(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatUsertype.prototype._read = function() {
    this._raw_blocks = new Array(2);
    this.blocks = new Array(2);
    for (var i = 0; i < 2; i++) {
      this._raw__raw_blocks[i] = this._io.readBytes(5);
      this._raw_blocks = KaitaiStream.processXorOne(this._raw__raw_blocks, 158);
      var _io__raw_blocks = new KaitaiStream(this._raw_blocks[i]);
      this.blocks[i] = new Block(_io__raw_blocks, this, this._root);
    }
  }

  var Block = ProcessRepeatUsertype.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Block.prototype._read = function() {
      this.a = this._io.readS4le();
      this.b = this._io.readS1();
    }

    return Block;
  })();

  return ProcessRepeatUsertype;
})();
return ProcessRepeatUsertype;
}));

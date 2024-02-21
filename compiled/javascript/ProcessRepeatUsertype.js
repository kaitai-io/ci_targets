// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessRepeatUsertype || (root.ProcessRepeatUsertype = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessRepeatUsertype_, KaitaiStream) {
var ProcessRepeatUsertype = (function() {
  function ProcessRepeatUsertype(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessRepeatUsertype.prototype._read = function() {
    this._raw_blocks = [];
    this._raw__raw_blocks = [];
    this.blocks = [];
    for (var i = 0; i < 2; i++) {
      this._raw__raw_blocks.push(this._io.readBytes(5));
      this._raw_blocks.push(KaitaiStream.processXorOne(this._raw__raw_blocks[i], 158));
      var _io__raw_blocks = new KaitaiStream(this._raw_blocks[i]);
      this.blocks.push(new Block(_io__raw_blocks, this, this._root));
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
ProcessRepeatUsertype_.ProcessRepeatUsertype = ProcessRepeatUsertype;
});

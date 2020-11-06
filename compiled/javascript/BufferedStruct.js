// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.BufferedStruct = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var BufferedStruct = (function() {
  function BufferedStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BufferedStruct.prototype._read = function() {
    this.len1 = this._io.readU4le();
    this._raw_block1 = this._io.readBytes(this.len1);
    var _io__raw_block1 = new KaitaiStream(this._raw_block1);
    this.block1 = new Block(_io__raw_block1, this, this._root);
    this.len2 = this._io.readU4le();
    this._raw_block2 = this._io.readBytes(this.len2);
    var _io__raw_block2 = new KaitaiStream(this._raw_block2);
    this.block2 = new Block(_io__raw_block2, this, this._root);
    this.finisher = this._io.readU4le();
  }

  var Block = BufferedStruct.Block = (function() {
    function Block(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Block.prototype._read = function() {
      this.number1 = this._io.readU4le();
      this.number2 = this._io.readU4le();
    }

    return Block;
  })();

  return BufferedStruct;
})();
return BufferedStruct;
}));

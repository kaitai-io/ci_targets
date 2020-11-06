// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.IfStruct = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var IfStruct = (function() {
  function IfStruct(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  IfStruct.prototype._read = function() {
    this.op1 = new Operation(this._io, this, this._root);
    this.op2 = new Operation(this._io, this, this._root);
    this.op3 = new Operation(this._io, this, this._root);
  }

  var Operation = IfStruct.Operation = (function() {
    function Operation(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Operation.prototype._read = function() {
      this.opcode = this._io.readU1();
      if (this.opcode == 84) {
        this.argTuple = new ArgTuple(this._io, this, this._root);
      }
      if (this.opcode == 83) {
        this.argStr = new ArgStr(this._io, this, this._root);
      }
    }

    return Operation;
  })();

  var ArgTuple = IfStruct.ArgTuple = (function() {
    function ArgTuple(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ArgTuple.prototype._read = function() {
      this.num1 = this._io.readU1();
      this.num2 = this._io.readU1();
    }

    return ArgTuple;
  })();

  var ArgStr = IfStruct.ArgStr = (function() {
    function ArgStr(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    ArgStr.prototype._read = function() {
      this.len = this._io.readU1();
      this.str = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "UTF-8");
    }

    return ArgStr;
  })();

  return IfStruct;
})();
return IfStruct;
}));

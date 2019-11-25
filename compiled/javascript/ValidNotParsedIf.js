// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.ValidNotParsedIf = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var ValidNotParsedIf = (function() {
  function ValidNotParsedIf(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ValidNotParsedIf.prototype._read = function() {
    if (false) {
      this.notParsed = this._io.readU1();
      if (!(this.notParsed == 42)) {
        throw new KaitaiStream.ValidationNotEqualError(42, this.notParsed, this._io, "/seq/0");
      }
    }
    if (true) {
      this.parsed = this._io.readU1();
      if (!(this.parsed == 80)) {
        throw new KaitaiStream.ValidationNotEqualError(80, this.parsed, this._io, "/seq/1");
      }
    }
  }

  return ValidNotParsedIf;
})();
return ValidNotParsedIf;
}));

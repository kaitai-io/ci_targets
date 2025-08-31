// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.StructPadTerm || (root.StructPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (StructPadTerm_, KaitaiStream) {
var StructPadTerm = (function() {
  function StructPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  StructPadTerm.prototype._read = function() {
    this._raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), 64);
    var _io__raw_strPad = new KaitaiStream(this._raw_strPad);
    this.strPad = new BytesWrapper(_io__raw_strPad, this, this._root);
    this._raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false);
    var _io__raw_strTerm = new KaitaiStream(this._raw_strTerm);
    this.strTerm = new BytesWrapper(_io__raw_strTerm, this, this._root);
    this._raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false);
    var _io__raw_strTermAndPad = new KaitaiStream(this._raw_strTermAndPad);
    this.strTermAndPad = new BytesWrapper(_io__raw_strTermAndPad, this, this._root);
    this._raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true);
    var _io__raw_strTermInclude = new KaitaiStream(this._raw_strTermInclude);
    this.strTermInclude = new BytesWrapper(_io__raw_strTermInclude, this, this._root);
  }

  var BytesWrapper = StructPadTerm.BytesWrapper = (function() {
    function BytesWrapper(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    BytesWrapper.prototype._read = function() {
      this.value = this._io.readBytesFull();
    }

    return BytesWrapper;
  })();

  return StructPadTerm;
})();
StructPadTerm_.StructPadTerm = StructPadTerm;
});

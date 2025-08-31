// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessStructPadTerm || (root.ProcessStructPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessStructPadTerm_, KaitaiStream) {
var ProcessStructPadTerm = (function() {
  function ProcessStructPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessStructPadTerm.prototype._read = function() {
    this._raw__raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), 64);
    this._raw_strPad = KaitaiStream.processXorOne(this._raw__raw_strPad, 21);
    var _io__raw_strPad = new KaitaiStream(this._raw_strPad);
    this.strPad = new BytesWrapper(_io__raw_strPad, this, this._root);
    this._raw__raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false);
    this._raw_strTerm = KaitaiStream.processXorOne(this._raw__raw_strTerm, 21);
    var _io__raw_strTerm = new KaitaiStream(this._raw_strTerm);
    this.strTerm = new BytesWrapper(_io__raw_strTerm, this, this._root);
    this._raw__raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false);
    this._raw_strTermAndPad = KaitaiStream.processXorOne(this._raw__raw_strTermAndPad, 21);
    var _io__raw_strTermAndPad = new KaitaiStream(this._raw_strTermAndPad);
    this.strTermAndPad = new BytesWrapper(_io__raw_strTermAndPad, this, this._root);
    this._raw__raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true);
    this._raw_strTermInclude = KaitaiStream.processXorOne(this._raw__raw_strTermInclude, 21);
    var _io__raw_strTermInclude = new KaitaiStream(this._raw_strTermInclude);
    this.strTermInclude = new BytesWrapper(_io__raw_strTermInclude, this, this._root);
  }

  var BytesWrapper = ProcessStructPadTerm.BytesWrapper = (function() {
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

  return ProcessStructPadTerm;
})();
ProcessStructPadTerm_.ProcessStructPadTerm = ProcessStructPadTerm;
});

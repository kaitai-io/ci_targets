// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.ProcessBytesPadTerm || (root.ProcessBytesPadTerm = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (ProcessBytesPadTerm_, KaitaiStream) {
var ProcessBytesPadTerm = (function() {
  function ProcessBytesPadTerm(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  ProcessBytesPadTerm.prototype._read = function() {
    this._raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), 64);
    this.strPad = KaitaiStream.processXorOne(this._raw_strPad, 21);
    this._raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, false);
    this.strTerm = KaitaiStream.processXorOne(this._raw_strTerm, 21);
    this._raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), 43), 64, false);
    this.strTermAndPad = KaitaiStream.processXorOne(this._raw_strTermAndPad, 21);
    this._raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), 64, true);
    this.strTermInclude = KaitaiStream.processXorOne(this._raw_strTermInclude, 21);
  }

  return ProcessBytesPadTerm;
})();
ProcessBytesPadTerm_.ProcessBytesPadTerm = ProcessBytesPadTerm;
});

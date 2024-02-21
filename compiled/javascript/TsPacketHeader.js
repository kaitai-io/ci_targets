// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.TsPacketHeader || (root.TsPacketHeader = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (TsPacketHeader_, KaitaiStream) {
/**
 * describes the first 4 header bytes of a TS Packet header
 */

var TsPacketHeader = (function() {
  TsPacketHeader.AdaptationFieldControlEnum = Object.freeze({
    RESERVED: 0,
    PAYLOAD_ONLY: 1,
    ADAPTATION_FIELD_ONLY: 2,
    ADAPTATION_FIELD_AND_PAYLOAD: 3,

    0: "RESERVED",
    1: "PAYLOAD_ONLY",
    2: "ADAPTATION_FIELD_ONLY",
    3: "ADAPTATION_FIELD_AND_PAYLOAD",
  });

  function TsPacketHeader(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  TsPacketHeader.prototype._read = function() {
    this.syncByte = this._io.readU1();
    this.transportErrorIndicator = this._io.readBitsIntBe(1) != 0;
    this.payloadUnitStartIndicator = this._io.readBitsIntBe(1) != 0;
    this.transportPriority = this._io.readBitsIntBe(1) != 0;
    this.pid = this._io.readBitsIntBe(13);
    this.transportScramblingControl = this._io.readBitsIntBe(2);
    this.adaptationFieldControl = this._io.readBitsIntBe(2);
    this.continuityCounter = this._io.readBitsIntBe(4);
    this._io.alignToByte();
    this.tsPacketRemain = this._io.readBytes(184);
  }

  return TsPacketHeader;
})();
TsPacketHeader_.TsPacketHeader = TsPacketHeader;
});

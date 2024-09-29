// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.CombineBytes || (root.CombineBytes = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (CombineBytes_, KaitaiStream) {
var CombineBytes = (function() {
  function CombineBytes(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  CombineBytes.prototype._read = function() {
    this.bytesTerm = this._io.readBytesTerm(124, false, true, true);
    this.bytesLimit = this._io.readBytes(4);
    this.bytesEos = this._io.readBytesFull();
  }
  Object.defineProperty(CombineBytes.prototype, 'bytesCalc', {
    get: function() {
      if (this._m_bytesCalc !== undefined)
        return this._m_bytesCalc;
      this._m_bytesCalc = new Uint8Array([82, 110, 68]);
      return this._m_bytesCalc;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'eosOrCalc', {
    get: function() {
      if (this._m_eosOrCalc !== undefined)
        return this._m_eosOrCalc;
      this._m_eosOrCalc = (true ? this.bytesEos : this.bytesCalc);
      return this._m_eosOrCalc;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'limitOrCalc', {
    get: function() {
      if (this._m_limitOrCalc !== undefined)
        return this._m_limitOrCalc;
      this._m_limitOrCalc = (false ? this.bytesLimit : this.bytesCalc);
      return this._m_limitOrCalc;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'limitOrEos', {
    get: function() {
      if (this._m_limitOrEos !== undefined)
        return this._m_limitOrEos;
      this._m_limitOrEos = (true ? this.bytesLimit : this.bytesEos);
      return this._m_limitOrEos;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'termOrCalc', {
    get: function() {
      if (this._m_termOrCalc !== undefined)
        return this._m_termOrCalc;
      this._m_termOrCalc = (true ? this.bytesTerm : this.bytesCalc);
      return this._m_termOrCalc;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'termOrEos', {
    get: function() {
      if (this._m_termOrEos !== undefined)
        return this._m_termOrEos;
      this._m_termOrEos = (false ? this.bytesTerm : this.bytesEos);
      return this._m_termOrEos;
    }
  });
  Object.defineProperty(CombineBytes.prototype, 'termOrLimit', {
    get: function() {
      if (this._m_termOrLimit !== undefined)
        return this._m_termOrLimit;
      this._m_termOrLimit = (true ? this.bytesTerm : this.bytesLimit);
      return this._m_termOrLimit;
    }
  });

  return CombineBytes;
})();
CombineBytes_.CombineBytes = CombineBytes;
});

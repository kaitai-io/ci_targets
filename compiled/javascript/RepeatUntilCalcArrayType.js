// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.RepeatUntilCalcArrayType = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var RepeatUntilCalcArrayType = (function() {
  function RepeatUntilCalcArrayType(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  RepeatUntilCalcArrayType.prototype._read = function() {
    this._raw_records = [];
    this.records = [];
    var i = 0;
    do {
      var _buf = this._io.readBytes(5);
      this._raw_records.push(_buf);
      var _io__raw_records = new KaitaiStream(this._raw_records[this._raw_records.length - 1]);
      var _ = new Record(_io__raw_records, this, this._root);
      this.records.push(_);
      i++;
    } while (!(_.marker == 170));
  }

  var Record = RepeatUntilCalcArrayType.Record = (function() {
    function Record(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Record.prototype._read = function() {
      this.marker = this._io.readU1();
      this.body = this._io.readU4le();
    }

    return Record;
  })();
  Object.defineProperty(RepeatUntilCalcArrayType.prototype, 'recsAccessor', {
    get: function() {
      if (this._m_recsAccessor !== undefined)
        return this._m_recsAccessor;
      this._m_recsAccessor = this.records;
      return this._m_recsAccessor;
    }
  });
  Object.defineProperty(RepeatUntilCalcArrayType.prototype, 'firstRec', {
    get: function() {
      if (this._m_firstRec !== undefined)
        return this._m_firstRec;
      this._m_firstRec = this.recsAccessor[0];
      return this._m_firstRec;
    }
  });

  return RepeatUntilCalcArrayType;
})();
return RepeatUntilCalcArrayType;
}));

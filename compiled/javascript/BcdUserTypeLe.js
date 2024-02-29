// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.BcdUserTypeLe || (root.BcdUserTypeLe = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (BcdUserTypeLe_, KaitaiStream) {
var BcdUserTypeLe = (function() {
  function BcdUserTypeLe(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  BcdUserTypeLe.prototype._read = function() {
    this._raw_ltr = this._io.readBytes(4);
    var _io__raw_ltr = new KaitaiStream(this._raw_ltr);
    this.ltr = new LtrObj(_io__raw_ltr, this, this._root);
    this._raw_rtl = this._io.readBytes(4);
    var _io__raw_rtl = new KaitaiStream(this._raw_rtl);
    this.rtl = new RtlObj(_io__raw_rtl, this, this._root);
    this._raw_leadingZeroLtr = this._io.readBytes(4);
    var _io__raw_leadingZeroLtr = new KaitaiStream(this._raw_leadingZeroLtr);
    this.leadingZeroLtr = new LeadingZeroLtrObj(_io__raw_leadingZeroLtr, this, this._root);
  }

  var LtrObj = BcdUserTypeLe.LtrObj = (function() {
    function LtrObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    LtrObj.prototype._read = function() {
      this.b1 = this._io.readU1();
      this.b2 = this._io.readU1();
      this.b3 = this._io.readU1();
      this.b4 = this._io.readU1();
    }
    Object.defineProperty(LtrObj.prototype, 'digit2', {
      get: function() {
        if (this._m_digit2 !== undefined)
          return this._m_digit2;
        this._m_digit2 = (this.b4 & 15);
        return this._m_digit2;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit8', {
      get: function() {
        if (this._m_digit8 !== undefined)
          return this._m_digit8;
        this._m_digit8 = (this.b1 & 15);
        return this._m_digit8;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'asInt', {
      get: function() {
        if (this._m_asInt !== undefined)
          return this._m_asInt;
        this._m_asInt = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000));
        return this._m_asInt;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'asStr', {
      get: function() {
        if (this._m_asStr !== undefined)
          return this._m_asStr;
        this._m_asStr = (this.digit1).toString(10) + (this.digit2).toString(10) + (this.digit3).toString(10) + (this.digit4).toString(10) + (this.digit5).toString(10) + (this.digit6).toString(10) + (this.digit7).toString(10) + (this.digit8).toString(10);
        return this._m_asStr;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit4', {
      get: function() {
        if (this._m_digit4 !== undefined)
          return this._m_digit4;
        this._m_digit4 = (this.b3 & 15);
        return this._m_digit4;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit6', {
      get: function() {
        if (this._m_digit6 !== undefined)
          return this._m_digit6;
        this._m_digit6 = (this.b2 & 15);
        return this._m_digit6;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit5', {
      get: function() {
        if (this._m_digit5 !== undefined)
          return this._m_digit5;
        this._m_digit5 = ((this.b2 & 240) >>> 4);
        return this._m_digit5;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit7', {
      get: function() {
        if (this._m_digit7 !== undefined)
          return this._m_digit7;
        this._m_digit7 = ((this.b1 & 240) >>> 4);
        return this._m_digit7;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit1', {
      get: function() {
        if (this._m_digit1 !== undefined)
          return this._m_digit1;
        this._m_digit1 = ((this.b4 & 240) >>> 4);
        return this._m_digit1;
      }
    });
    Object.defineProperty(LtrObj.prototype, 'digit3', {
      get: function() {
        if (this._m_digit3 !== undefined)
          return this._m_digit3;
        this._m_digit3 = ((this.b3 & 240) >>> 4);
        return this._m_digit3;
      }
    });

    return LtrObj;
  })();

  var RtlObj = BcdUserTypeLe.RtlObj = (function() {
    function RtlObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    RtlObj.prototype._read = function() {
      this.b1 = this._io.readU1();
      this.b2 = this._io.readU1();
      this.b3 = this._io.readU1();
      this.b4 = this._io.readU1();
    }
    Object.defineProperty(RtlObj.prototype, 'digit2', {
      get: function() {
        if (this._m_digit2 !== undefined)
          return this._m_digit2;
        this._m_digit2 = (this.b4 & 15);
        return this._m_digit2;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit8', {
      get: function() {
        if (this._m_digit8 !== undefined)
          return this._m_digit8;
        this._m_digit8 = (this.b1 & 15);
        return this._m_digit8;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'asInt', {
      get: function() {
        if (this._m_asInt !== undefined)
          return this._m_asInt;
        this._m_asInt = ((((((((this.digit1 * 1) + (this.digit2 * 10)) + (this.digit3 * 100)) + (this.digit4 * 1000)) + (this.digit5 * 10000)) + (this.digit6 * 100000)) + (this.digit7 * 1000000)) + (this.digit8 * 10000000));
        return this._m_asInt;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'asStr', {
      get: function() {
        if (this._m_asStr !== undefined)
          return this._m_asStr;
        this._m_asStr = (this.digit8).toString(10) + (this.digit7).toString(10) + (this.digit6).toString(10) + (this.digit5).toString(10) + (this.digit4).toString(10) + (this.digit3).toString(10) + (this.digit2).toString(10) + (this.digit1).toString(10);
        return this._m_asStr;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit4', {
      get: function() {
        if (this._m_digit4 !== undefined)
          return this._m_digit4;
        this._m_digit4 = (this.b3 & 15);
        return this._m_digit4;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit6', {
      get: function() {
        if (this._m_digit6 !== undefined)
          return this._m_digit6;
        this._m_digit6 = (this.b2 & 15);
        return this._m_digit6;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit5', {
      get: function() {
        if (this._m_digit5 !== undefined)
          return this._m_digit5;
        this._m_digit5 = ((this.b2 & 240) >>> 4);
        return this._m_digit5;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit7', {
      get: function() {
        if (this._m_digit7 !== undefined)
          return this._m_digit7;
        this._m_digit7 = ((this.b1 & 240) >>> 4);
        return this._m_digit7;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit1', {
      get: function() {
        if (this._m_digit1 !== undefined)
          return this._m_digit1;
        this._m_digit1 = ((this.b4 & 240) >>> 4);
        return this._m_digit1;
      }
    });
    Object.defineProperty(RtlObj.prototype, 'digit3', {
      get: function() {
        if (this._m_digit3 !== undefined)
          return this._m_digit3;
        this._m_digit3 = ((this.b3 & 240) >>> 4);
        return this._m_digit3;
      }
    });

    return RtlObj;
  })();

  var LeadingZeroLtrObj = BcdUserTypeLe.LeadingZeroLtrObj = (function() {
    function LeadingZeroLtrObj(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    LeadingZeroLtrObj.prototype._read = function() {
      this.b1 = this._io.readU1();
      this.b2 = this._io.readU1();
      this.b3 = this._io.readU1();
      this.b4 = this._io.readU1();
    }
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit2', {
      get: function() {
        if (this._m_digit2 !== undefined)
          return this._m_digit2;
        this._m_digit2 = (this.b4 & 15);
        return this._m_digit2;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit8', {
      get: function() {
        if (this._m_digit8 !== undefined)
          return this._m_digit8;
        this._m_digit8 = (this.b1 & 15);
        return this._m_digit8;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'asInt', {
      get: function() {
        if (this._m_asInt !== undefined)
          return this._m_asInt;
        this._m_asInt = ((((((((this.digit8 * 1) + (this.digit7 * 10)) + (this.digit6 * 100)) + (this.digit5 * 1000)) + (this.digit4 * 10000)) + (this.digit3 * 100000)) + (this.digit2 * 1000000)) + (this.digit1 * 10000000));
        return this._m_asInt;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'asStr', {
      get: function() {
        if (this._m_asStr !== undefined)
          return this._m_asStr;
        this._m_asStr = (this.digit1).toString(10) + (this.digit2).toString(10) + (this.digit3).toString(10) + (this.digit4).toString(10) + (this.digit5).toString(10) + (this.digit6).toString(10) + (this.digit7).toString(10) + (this.digit8).toString(10);
        return this._m_asStr;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit4', {
      get: function() {
        if (this._m_digit4 !== undefined)
          return this._m_digit4;
        this._m_digit4 = (this.b3 & 15);
        return this._m_digit4;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit6', {
      get: function() {
        if (this._m_digit6 !== undefined)
          return this._m_digit6;
        this._m_digit6 = (this.b2 & 15);
        return this._m_digit6;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit5', {
      get: function() {
        if (this._m_digit5 !== undefined)
          return this._m_digit5;
        this._m_digit5 = ((this.b2 & 240) >>> 4);
        return this._m_digit5;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit7', {
      get: function() {
        if (this._m_digit7 !== undefined)
          return this._m_digit7;
        this._m_digit7 = ((this.b1 & 240) >>> 4);
        return this._m_digit7;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit1', {
      get: function() {
        if (this._m_digit1 !== undefined)
          return this._m_digit1;
        this._m_digit1 = ((this.b4 & 240) >>> 4);
        return this._m_digit1;
      }
    });
    Object.defineProperty(LeadingZeroLtrObj.prototype, 'digit3', {
      get: function() {
        if (this._m_digit3 !== undefined)
          return this._m_digit3;
        this._m_digit3 = ((this.b3 & 240) >>> 4);
        return this._m_digit3;
      }
    });

    return LeadingZeroLtrObj;
  })();

  return BcdUserTypeLe;
})();
BcdUserTypeLe_.BcdUserTypeLe = BcdUserTypeLe;
});

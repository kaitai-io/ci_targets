// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.DebugEnumName = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var DebugEnumName = (function() {
  DebugEnumName.TestEnum1 = Object.freeze({
    ENUM_VALUE_80: 80,

    80: "ENUM_VALUE_80",
  });

  DebugEnumName.TestEnum2 = Object.freeze({
    ENUM_VALUE_65: 65,

    65: "ENUM_VALUE_65",
  });

  function DebugEnumName(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;
    this._debug = {};

  }
  DebugEnumName.prototype._read = function() {
    this._debug.one = { start: this._io.pos, ioOffset: this._io.byteOffset, enumName: "DebugEnumName.TestEnum1" };
    this.one = this._io.readU1();
    this._debug.one.end = this._io.pos;
    this._debug.arrayOfInts = { start: this._io.pos, ioOffset: this._io.byteOffset, enumName: "DebugEnumName.TestEnum2" };
    this.arrayOfInts = new Array(1);
    this._debug.arrayOfInts.arr = new Array(1);
    for (var i = 0; i < 1; i++) {
      this._debug.arrayOfInts.arr[i] = { start: this._io.pos, ioOffset: this._io.byteOffset, enumName: "DebugEnumName.TestEnum2" };
      this.arrayOfInts[i] = this._io.readU1();
      this._debug.arrayOfInts.arr[i].end = this._io.pos;
    }
    this._debug.arrayOfInts.end = this._io.pos;
    this._debug.testType = { start: this._io.pos, ioOffset: this._io.byteOffset };
    this.testType = new TestSubtype(this._io, this, this._root);
    this.testType._read();
    this._debug.testType.end = this._io.pos;
  }

  var TestSubtype = DebugEnumName.TestSubtype = (function() {
    TestSubtype.InnerEnum1 = Object.freeze({
      ENUM_VALUE_67: 67,

      67: "ENUM_VALUE_67",
    });

    TestSubtype.InnerEnum2 = Object.freeze({
      ENUM_VALUE_11: 11,

      11: "ENUM_VALUE_11",
    });

    function TestSubtype(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;
      this._debug = {};

    }
    TestSubtype.prototype._read = function() {
      this._debug.field1 = { start: this._io.pos, ioOffset: this._io.byteOffset, enumName: "DebugEnumName.TestSubtype.InnerEnum1" };
      this.field1 = this._io.readU1();
      this._debug.field1.end = this._io.pos;
      this._debug.field2 = { start: this._io.pos, ioOffset: this._io.byteOffset };
      this.field2 = this._io.readU1();
      this._debug.field2.end = this._io.pos;
    }
    Object.defineProperty(TestSubtype.prototype, 'instanceField', {
      get: function() {
        if (this._m_instanceField !== undefined)
          return this._m_instanceField;
        this._debug._m_instanceField = { enumName: "DebugEnumName.TestSubtype.InnerEnum2" };
        this._m_instanceField = (this.field2 & 15);
        return this._m_instanceField;
      }
    });

    return TestSubtype;
  })();

  return DebugEnumName;
})();
return DebugEnumName;
}));

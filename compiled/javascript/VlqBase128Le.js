// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['exports', 'kaitai-struct/KaitaiStream'], factory);
  } else if (typeof exports === 'object' && exports !== null && typeof exports.nodeType !== 'number') {
    factory(exports, require('kaitai-struct/KaitaiStream'));
  } else {
    factory(root.VlqBase128Le || (root.VlqBase128Le = {}), root.KaitaiStream);
  }
})(typeof self !== 'undefined' ? self : this, function (VlqBase128Le_, KaitaiStream) {
/**
 * A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
 * consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
 * "least significant group first", i.e. in "little-endian" manner.
 * 
 * This particular encoding is specified and used in:
 * 
 * * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
 *   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
 * * Google Protocol Buffers, where it's called "Base 128 Varints".
 *   <https://protobuf.dev/programming-guides/encoding/#varints>
 * * Apache Lucene, where it's called "VInt"
 *   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
 * * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
 *   top of it for signed ints
 *   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
 * 
 * More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
 * 
 * This particular implementation supports serialized values to up 8 bytes long.
 */

var VlqBase128Le = (function() {
  function VlqBase128Le(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  VlqBase128Le.prototype._read = function() {
    this.groups = [];
    var i = 0;
    do {
      var _ = new Group(this._io, this, this._root);
      this.groups.push(_);
      i++;
    } while (!(!(_.hasNext)));
  }

  /**
   * One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
   */

  var Group = VlqBase128Le.Group = (function() {
    function Group(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root;

      this._read();
    }
    Group.prototype._read = function() {
      this.hasNext = this._io.readBitsIntBe(1) != 0;
      this.value = this._io.readBitsIntBe(7);
    }

    /**
     * If true, then we have more bytes to read
     */

    /**
     * The 7-bit (base128) numeric value chunk of this group
     */

    return Group;
  })();
  Object.defineProperty(VlqBase128Le.prototype, 'len', {
    get: function() {
      if (this._m_len !== undefined)
        return this._m_len;
      this._m_len = this.groups.length;
      return this._m_len;
    }
  });
  Object.defineProperty(VlqBase128Le.prototype, 'signBit', {
    get: function() {
      if (this._m_signBit !== undefined)
        return this._m_signBit;
      this._m_signBit = 1 << 7 * this.len - 1;
      return this._m_signBit;
    }
  });

  /**
   * Resulting unsigned value as normal integer
   */
  Object.defineProperty(VlqBase128Le.prototype, 'value', {
    get: function() {
      if (this._m_value !== undefined)
        return this._m_value;
      this._m_value = ((((((this.groups[0].value + (this.len >= 2 ? this.groups[1].value << 7 : 0)) + (this.len >= 3 ? this.groups[2].value << 14 : 0)) + (this.len >= 4 ? this.groups[3].value << 21 : 0)) + (this.len >= 5 ? this.groups[4].value << 28 : 0)) + (this.len >= 6 ? this.groups[5].value << 35 : 0)) + (this.len >= 7 ? this.groups[6].value << 42 : 0)) + (this.len >= 8 ? this.groups[7].value << 49 : 0);
      return this._m_value;
    }
  });

  /**
   * @see {@link https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend|Source}
   */
  Object.defineProperty(VlqBase128Le.prototype, 'valueSigned', {
    get: function() {
      if (this._m_valueSigned !== undefined)
        return this._m_valueSigned;
      this._m_valueSigned = this.value ^ this.signBit - this.signBit;
      return this._m_valueSigned;
    }
  });

  return VlqBase128Le;
})();
VlqBase128Le_.VlqBase128Le = VlqBase128Le;
});

# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class VlqBase128Le(ReadWriteKaitaiStruct):
    """A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
    consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
    "least significant group first", i.e. in "little-endian" manner.
    
    This particular encoding is specified and used in:
    
    * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
      <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
    * Google Protocol Buffers, where it's called "Base 128 Varints".
      <https://protobuf.dev/programming-guides/encoding/#varints>
    * Apache Lucene, where it's called "VInt"
      <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
    * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
      top of it for signed ints
      <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
    
    More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
    
    This particular implementation supports serialized values to up 8 bytes long.
    """
    def __init__(self, _io=None, _parent=None, _root=None):
        super(VlqBase128Le, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.groups = []
        i = 0
        while True:
            _t_groups = VlqBase128Le.Group(self._io, self, self._root)
            try:
                _t_groups._read()
            finally:
                _ = _t_groups
                self.groups.append(_)
            if (not (_.has_next)):
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.groups)):
            pass
            self.groups[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(VlqBase128Le, self)._write__seq(io)
        for i in range(len(self.groups)):
            pass
            self.groups[i]._write__seq(self._io)



    def _check(self):
        if len(self.groups) == 0:
            raise kaitaistruct.ConsistencyError(u"groups", len(self.groups), 0)
        for i in range(len(self.groups)):
            pass
            if self.groups[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"groups", self.groups[i]._root, self._root)
            if self.groups[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"groups", self.groups[i]._parent, self)
            _ = self.groups[i]
            if (not (_.has_next)) != (i == len(self.groups) - 1):
                raise kaitaistruct.ConsistencyError(u"groups", (not (_.has_next)), i == len(self.groups) - 1)

        self._dirty = False

    class Group(ReadWriteKaitaiStruct):
        """One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
        """
        def __init__(self, _io=None, _parent=None, _root=None):
            super(VlqBase128Le.Group, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.has_next = self._io.read_bits_int_be(1) != 0
            self.value = self._io.read_bits_int_be(7)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(VlqBase128Le.Group, self)._write__seq(io)
            self._io.write_bits_int_be(1, int(self.has_next))
            self._io.write_bits_int_be(7, self.value)


        def _check(self):
            self._dirty = False


    @property
    def len(self):
        if hasattr(self, '_m_len'):
            return self._m_len

        self._m_len = len(self.groups)
        return getattr(self, '_m_len', None)

    def _invalidate_len(self):
        del self._m_len
    @property
    def sign_bit(self):
        if hasattr(self, '_m_sign_bit'):
            return self._m_sign_bit

        self._m_sign_bit = (1 << 7 * self.len - 1)
        return getattr(self, '_m_sign_bit', None)

    def _invalidate_sign_bit(self):
        del self._m_sign_bit
    @property
    def value(self):
        """Resulting unsigned value as normal integer."""
        if hasattr(self, '_m_value'):
            return self._m_value

        self._m_value = (((((((self.groups[0].value + (self.groups[1].value << 7 if self.len >= 2 else 0)) + (self.groups[2].value << 14 if self.len >= 3 else 0)) + (self.groups[3].value << 21 if self.len >= 4 else 0)) + (self.groups[4].value << 28 if self.len >= 5 else 0)) + (self.groups[5].value << 35 if self.len >= 6 else 0)) + (self.groups[6].value << 42 if self.len >= 7 else 0)) + (self.groups[7].value << 49 if self.len >= 8 else 0))
        return getattr(self, '_m_value', None)

    def _invalidate_value(self):
        del self._m_value
    @property
    def value_signed(self):
        """
        .. seealso::
           Source - https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend
        """
        if hasattr(self, '_m_value_signed'):
            return self._m_value_signed

        self._m_value_signed = ((self.value ^ self.sign_bit) - self.sign_bit)
        return getattr(self, '_m_value_signed', None)

    def _invalidate_value_signed(self):
        del self._m_value_signed


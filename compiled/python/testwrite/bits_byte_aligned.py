# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsByteAligned(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(BitsByteAligned, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_bits_int_be(6)
        self.byte_1 = self._io.read_u1()
        self.two = self._io.read_bits_int_be(3)
        self.three = self._io.read_bits_int_be(1) != 0
        self.byte_2 = self._io.read_u1()
        self.four = self._io.read_bits_int_be(14)
        self.byte_3 = self._io.read_bytes(1)
        self.full_byte = self._io.read_bits_int_be(8)
        self.byte_4 = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BitsByteAligned, self)._write__seq(io)
        self._io.write_bits_int_be(6, self.one)
        self._io.write_u1(self.byte_1)
        self._io.write_bits_int_be(3, self.two)
        self._io.write_bits_int_be(1, int(self.three))
        self._io.write_u1(self.byte_2)
        self._io.write_bits_int_be(14, self.four)
        self._io.write_bytes(self.byte_3)
        self._io.write_bits_int_be(8, self.full_byte)
        self._io.write_u1(self.byte_4)


    def _check(self):
        if len(self.byte_3) != 1:
            raise kaitaistruct.ConsistencyError(u"byte_3", len(self.byte_3), 1)
        self._dirty = False



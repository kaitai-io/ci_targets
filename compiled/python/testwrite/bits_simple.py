# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsSimple(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.byte_1 = self._io.read_bits_int_be(8)
        self.byte_2 = self._io.read_bits_int_be(8)
        self.bits_a = self._io.read_bits_int_be(1) != 0
        self.bits_b = self._io.read_bits_int_be(3)
        self.bits_c = self._io.read_bits_int_be(4)
        self.large_bits_1 = self._io.read_bits_int_be(10)
        self.spacer = self._io.read_bits_int_be(3)
        self.large_bits_2 = self._io.read_bits_int_be(11)
        self.normal_s2 = self._io.read_s2be()
        self.byte_8_9_10 = self._io.read_bits_int_be(24)
        self.byte_11_to_14 = self._io.read_bits_int_be(32)
        self.byte_15_to_19 = self._io.read_bits_int_be(40)
        self.byte_20_to_27 = self._io.read_bits_int_be(64)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BitsSimple, self)._write__seq(io)
        self._io.write_bits_int_be(8, self.byte_1)
        self._io.write_bits_int_be(8, self.byte_2)
        self._io.write_bits_int_be(1, int(self.bits_a))
        self._io.write_bits_int_be(3, self.bits_b)
        self._io.write_bits_int_be(4, self.bits_c)
        self._io.write_bits_int_be(10, self.large_bits_1)
        self._io.write_bits_int_be(3, self.spacer)
        self._io.write_bits_int_be(11, self.large_bits_2)
        self._io.write_s2be(self.normal_s2)
        self._io.write_bits_int_be(24, self.byte_8_9_10)
        self._io.write_bits_int_be(32, self.byte_11_to_14)
        self._io.write_bits_int_be(40, self.byte_15_to_19)
        self._io.write_bits_int_be(64, self.byte_20_to_27)


    def _check(self):
        pass

    @property
    def test_if_b1(self):
        if hasattr(self, '_m_test_if_b1'):
            return self._m_test_if_b1

        if self.bits_a == False:
            pass
            self._m_test_if_b1 = 123

        return getattr(self, '_m_test_if_b1', None)

    def _invalidate_test_if_b1(self):
        del self._m_test_if_b1


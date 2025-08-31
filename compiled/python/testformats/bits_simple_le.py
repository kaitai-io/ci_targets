# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsSimpleLe(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.byte_1 = self._io.read_bits_int_le(8)
        self.byte_2 = self._io.read_bits_int_le(8)
        self.bits_a = self._io.read_bits_int_le(1) != 0
        self.bits_b = self._io.read_bits_int_le(3)
        self.bits_c = self._io.read_bits_int_le(4)
        self.large_bits_1 = self._io.read_bits_int_le(10)
        self.spacer = self._io.read_bits_int_le(3)
        self.large_bits_2 = self._io.read_bits_int_le(11)
        self.normal_s2 = self._io.read_s2be()
        self.byte_8_9_10 = self._io.read_bits_int_le(24)
        self.byte_11_to_14 = self._io.read_bits_int_le(32)
        self.byte_15_to_19 = self._io.read_bits_int_le(40)
        self.byte_20_to_27 = self._io.read_bits_int_le(64)


    def _fetch_instances(self):
        pass

    @property
    def test_if_b1(self):
        if hasattr(self, '_m_test_if_b1'):
            return self._m_test_if_b1

        if self.bits_a == True:
            pass
            self._m_test_if_b1 = 123

        return getattr(self, '_m_test_if_b1', None)



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class BitsSimple(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.byte_1 = self._io.read_bits_int(8)
        self.byte_2 = self._io.read_bits_int(8)
        self.bits_a = self._io.read_bits_int(1) != 0
        self.bits_b = self._io.read_bits_int(3)
        self.bits_c = self._io.read_bits_int(4)
        self.large_bits_1 = self._io.read_bits_int(10)
        self.spacer = self._io.read_bits_int(3)
        self.large_bits_2 = self._io.read_bits_int(11)
        self._io.align_to_byte()
        self.normal_s2 = self._io.read_s2be()
        self.byte_8_9_10 = self._io.read_bits_int(24)
        self.byte_11_to_14 = self._io.read_bits_int(32)
        self.byte_15_to_19 = self._io.read_bits_int(40)
        self.byte_20_to_27 = self._io.read_bits_int(64)

    @property
    def test_if_b1(self):
        if hasattr(self, '_m_test_if_b1'):
            return self._m_test_if_b1 if hasattr(self, '_m_test_if_b1') else None

        if self.bits_a == False:
            self._m_test_if_b1 = 123

        return self._m_test_if_b1 if hasattr(self, '_m_test_if_b1') else None



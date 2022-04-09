# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsByteAligned(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = self._io.read_bits_int_be(6)
        self._io.align_to_byte()
        self.byte_1 = self._io.read_u1()
        self.two = self._io.read_bits_int_be(3)
        self.three = self._io.read_bits_int_be(1) != 0
        self._io.align_to_byte()
        self.byte_2 = self._io.read_u1()
        self.four = self._io.read_bits_int_be(14)
        self._io.align_to_byte()
        self.byte_3 = self._io.read_bytes(1)
        self.full_byte = self._io.read_bits_int_be(8)
        self._io.align_to_byte()
        self.byte_4 = self._io.read_u1()



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class BitsByteAligned(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

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


    def _fetch_instances(self):
        pass



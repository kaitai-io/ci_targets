# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class FixedContents(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.normal = self._io.read_bytes(6)
        if not self.normal == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.normal, self._io, "/seq/0")
        self.high_bit_8 = self._io.read_bytes(2)
        if not self.high_bit_8 == b"\xFF\xFF":
            raise kaitaistruct.ValidationNotEqualError(b"\xFF\xFF", self.high_bit_8, self._io, "/seq/1")


    def _fetch_instances(self):
        pass



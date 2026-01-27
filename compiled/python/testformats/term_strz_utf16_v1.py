# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class TermStrzUtf16V1(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term_multi(b"\x00\x00", False, True, True)).decode("UTF-16LE")
        self.s2 = (self._io.read_bytes_term_multi(b"\x00\x00", False, False, True)).decode("UTF-16LE")
        self.term = self._io.read_u2le()
        self.s3 = (self._io.read_bytes_term_multi(b"\x00\x00", True, True, True)).decode("UTF-16LE")


    def _fetch_instances(self):
        pass



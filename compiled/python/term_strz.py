# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStrz(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode("UTF-8")
        self.s2 = (self._io.read_bytes_term(124, False, False, True)).decode("UTF-8")
        self.s3 = (self._io.read_bytes_term(64, True, True, True)).decode("UTF-8")



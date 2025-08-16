# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStrzUtf16V3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term_multi(b"\x00\x00", False, False, True)).decode(u"UTF-16LE")
        self.term = self._io.read_u2le()
        self.s2 = (self._io.read_bytes_term_multi(b"\x00\x00", False, False, True)).decode(u"UTF-16LE")
        self.s3 = (self._io.read_bytes_term_multi(b"\x00\x00", False, True, True)).decode(u"UTF-16LE")



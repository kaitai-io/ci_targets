# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrPadTermUtf16(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.str_term = (KaitaiStream.bytes_terminate_multi(self._io.read_bytes(10), b"\x00\x00", False)).decode(u"UTF-16LE")
        self.str_term_include = (KaitaiStream.bytes_terminate_multi(self._io.read_bytes(10), b"\x00\x00", True)).decode(u"UTF-16LE")
        self.str_term_and_pad = (KaitaiStream.bytes_terminate_multi(KaitaiStream.bytes_strip_right(self._io.read_bytes(9), 43), b"\x00\x00", False)).decode(u"UTF-16LE")



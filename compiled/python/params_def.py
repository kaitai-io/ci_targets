# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsDef(KaitaiStruct):
    def __init__(self, len, has_trailer, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.len = len
        self.has_trailer = has_trailer
        self._read()

    def _read(self):
        self.buf = (self._io.read_bytes(self.len)).decode(u"UTF-8")
        if self.has_trailer:
            self.trailer = self._io.read_u1()




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class CastToTop(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.code = self._io.read_u1()

    @property
    def header(self):
        if hasattr(self, '_m_header'):
            return self._m_header if hasattr(self, '_m_header') else None

        _pos = self._io.pos()
        self._io.seek(1)
        self._m_header = CastToTop(self._io)
        self._io.seek(_pos)
        return self._m_header if hasattr(self, '_m_header') else None

    @property
    def header_casted(self):
        if hasattr(self, '_m_header_casted'):
            return self._m_header_casted if hasattr(self, '_m_header_casted') else None

        self._m_header_casted = self.header
        return self._m_header_casted if hasattr(self, '_m_header_casted') else None



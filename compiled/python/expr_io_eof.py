# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprIoEof(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_substream1 = self._io.read_bytes(4)
        io = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = self._root.OneOrTwo(io, self, self._root)
        self._raw_substream2 = self._io.read_bytes(8)
        io = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = self._root.OneOrTwo(io, self, self._root)

    class OneOrTwo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.one = self._io.read_u4le()
            if not (self._io.is_eof()):
                self.two = self._io.read_u4le()


        @property
        def reflect_eof(self):
            if hasattr(self, '_m_reflect_eof'):
                return self._m_reflect_eof if hasattr(self, '_m_reflect_eof') else None

            self._m_reflect_eof = self._io.is_eof()
            return self._m_reflect_eof if hasattr(self, '_m_reflect_eof') else None




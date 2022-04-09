# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

import hello_world
class CastToImported(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = hello_world.HelloWorld(self._io)

    @property
    def one_casted(self):
        if hasattr(self, '_m_one_casted'):
            return self._m_one_casted if hasattr(self, '_m_one_casted') else None

        self._m_one_casted = self.one
        return self._m_one_casted if hasattr(self, '_m_one_casted') else None



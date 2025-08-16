# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Imports0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.two = self._io.read_u1()
        self.hw = hello_world.HelloWorld(self._io)

    @property
    def hw_one(self):
        if hasattr(self, '_m_hw_one'):
            return self._m_hw_one

        self._m_hw_one = self.hw.one
        return getattr(self, '_m_hw_one', None)



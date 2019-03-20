# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

import hello_world
class Imports0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.two = self._io.read_u1()
        self.hw = hello_world.HelloWorld(self._io)

    @property
    def hw_one(self):
        if hasattr(self, '_m_hw_one'):
            return self._m_hw_one if hasattr(self, '_m_hw_one') else None

        self._m_hw_one = self.hw.one
        return self._m_hw_one if hasattr(self, '_m_hw_one') else None



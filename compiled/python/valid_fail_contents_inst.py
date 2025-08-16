# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailContentsInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        if len(self.foo) == 0:
            self.a = self._io.read_bytes(0)


    @property
    def foo(self):
        if hasattr(self, '_m_foo'):
            return self._m_foo

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_foo = self._io.read_bytes(2)
        self._io.seek(_pos)
        return getattr(self, '_m_foo', None)



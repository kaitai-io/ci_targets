# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NonStandard(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = self._io.read_u1()
        _on = self.foo
        if _on == 42:
            self.bar = self._io.read_u2le()
        elif _on == 43:
            self.bar = self._io.read_u4le()

    @property
    def pi(self):
        if hasattr(self, '_m_pi'):
            return self._m_pi

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_pi = self._io.read_u1()
        self._io.seek(_pos)
        return getattr(self, '_m_pi', None)

    @property
    def vi(self):
        if hasattr(self, '_m_vi'):
            return self._m_vi

        self._m_vi = self.foo
        return getattr(self, '_m_vi', None)



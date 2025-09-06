# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IfInstances(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(IfInstances, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass
        _ = self.never_happens
        if hasattr(self, '_m_never_happens'):
            pass


    @property
    def never_happens(self):
        if hasattr(self, '_m_never_happens'):
            return self._m_never_happens

        if False:
            pass
            _pos = self._io.pos()
            self._io.seek(100500)
            self._m_never_happens = self._io.read_u1()
            self._io.seek(_pos)

        return getattr(self, '_m_never_happens', None)



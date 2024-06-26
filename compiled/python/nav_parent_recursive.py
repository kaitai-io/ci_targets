# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentRecursive(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.value = self._io.read_u1()
        if self.value == 255:
            self.next = NavParentRecursive(self._io, self, self._root)


    @property
    def parent_value(self):
        if hasattr(self, '_m_parent_value'):
            return self._m_parent_value

        if self.value != 255:
            self._m_parent_value = self._parent.value

        return getattr(self, '_m_parent_value', None)



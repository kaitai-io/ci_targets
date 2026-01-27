# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import integers


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NameClashImportVsInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass
        _ = self.integers
        if hasattr(self, '_m_integers'):
            pass
            self._m_integers._fetch_instances()


    @property
    def integers(self):
        if hasattr(self, '_m_integers'):
            return self._m_integers

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_integers = integers.Integers(self._io)
        self._io.seek(_pos)
        return getattr(self, '_m_integers', None)

    @property
    def std(self):
        if hasattr(self, '_m_std'):
            return self._m_std

        self._m_std = 1 + 2
        return getattr(self, '_m_std', None)



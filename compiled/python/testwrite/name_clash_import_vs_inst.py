# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import integers


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NameClashImportVsInst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NameClashImportVsInst, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_integers = False
        self.integers__enabled = True

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.integers
        if hasattr(self, '_m_integers'):
            pass
            self._m_integers._fetch_instances()



    def _write__seq(self, io=None):
        super(NameClashImportVsInst, self)._write__seq(io)
        self._should_write_integers = self.integers__enabled


    def _check(self):
        if self.integers__enabled:
            pass

        self._dirty = False

    @property
    def integers(self):
        if self._should_write_integers:
            self._write_integers()
        if hasattr(self, '_m_integers'):
            return self._m_integers

        if not self.integers__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_integers = integers.Integers(self._io)
        self._m_integers._read()
        self._io.seek(_pos)
        return getattr(self, '_m_integers', None)

    @integers.setter
    def integers(self, v):
        self._dirty = True
        self._m_integers = v

    def _write_integers(self):
        self._should_write_integers = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._m_integers._write__seq(self._io)
        self._io.seek(_pos)

    @property
    def std(self):
        if hasattr(self, '_m_std'):
            return self._m_std

        self._m_std = 1 + 2
        return getattr(self, '_m_std', None)

    def _invalidate_std(self):
        del self._m_std


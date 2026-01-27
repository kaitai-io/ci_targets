# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class PositionToEnd(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_index = False
        self.index__enabled = True

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.index
        if hasattr(self, '_m_index'):
            pass
            self._m_index._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._should_write_index = self.index__enabled


    def _check(self):
        if self.index__enabled:
            pass
            if self._m_index._root != self._root:
                raise kaitaistruct.ConsistencyError("index", self._root, self._m_index._root)
            if self._m_index._parent != self:
                raise kaitaistruct.ConsistencyError("index", self, self._m_index._parent)

        self._dirty = False

    class IndexObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u4le()
            self.bar = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u4le(self.foo)
            self._io.write_u4le(self.bar)


        def _check(self):
            self._dirty = False


    @property
    def index(self):
        if self._should_write_index:
            self._write_index()
        if hasattr(self, '_m_index'):
            return self._m_index

        if not self.index__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(self._io.size() - 8)
        self._m_index = PositionToEnd.IndexObj(self._io, self, self._root)
        self._m_index._read()
        self._io.seek(_pos)
        return getattr(self, '_m_index', None)

    @index.setter
    def index(self, v):
        self._dirty = True
        self._m_index = v

    def _write_index(self):
        self._should_write_index = False
        _pos = self._io.pos()
        self._io.seek(self._io.size() - 8)
        self._m_index._write__seq(self._io)
        self._io.seek(_pos)



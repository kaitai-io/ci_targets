# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CastToTop(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(CastToTop, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_header = False
        self.header__enabled = True

    def _read(self):
        self.code = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.header
        if hasattr(self, '_m_header'):
            pass
            self._m_header._fetch_instances()



    def _write__seq(self, io=None):
        super(CastToTop, self)._write__seq(io)
        self._should_write_header = self.header__enabled
        self._io.write_u1(self.code)


    def _check(self):
        if self.header__enabled:
            pass
            if self._m_header._root != self._root:
                raise kaitaistruct.ConsistencyError(u"header", self._m_header._root, self._root)
            if self._m_header._parent != self:
                raise kaitaistruct.ConsistencyError(u"header", self._m_header._parent, self)

        self._dirty = False

    @property
    def header(self):
        if self._should_write_header:
            self._write_header()
        if hasattr(self, '_m_header'):
            return self._m_header

        if not self.header__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(1)
        self._m_header = CastToTop(self._io, self, self._root)
        self._m_header._read()
        self._io.seek(_pos)
        return getattr(self, '_m_header', None)

    @header.setter
    def header(self, v):
        self._dirty = True
        self._m_header = v

    def _write_header(self):
        self._should_write_header = False
        _pos = self._io.pos()
        self._io.seek(1)
        self._m_header._write__seq(self._io)
        self._io.seek(_pos)

    @property
    def header_casted(self):
        if hasattr(self, '_m_header_casted'):
            return self._m_header_casted

        self._m_header_casted = self.header
        return getattr(self, '_m_header_casted', None)

    def _invalidate_header_casted(self):
        del self._m_header_casted


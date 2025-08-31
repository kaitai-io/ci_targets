# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CastToTop(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_header = False
        self.header__to_write = True

    def _read(self):
        self.code = self._io.read_u1()


    def _fetch_instances(self):
        pass
        _ = self.header
        self._m_header._fetch_instances()


    def _write__seq(self, io=None):
        super(CastToTop, self)._write__seq(io)
        self._should_write_header = self.header__to_write
        self._io.write_u1(self.code)


    def _check(self):
        pass

    @property
    def header(self):
        if self._should_write_header:
            self._write_header()
        if hasattr(self, '_m_header'):
            return self._m_header

        _pos = self._io.pos()
        self._io.seek(1)
        self._m_header = CastToTop(self._io, self, self._root)
        self._m_header._read()
        self._io.seek(_pos)
        return getattr(self, '_m_header', None)

    @header.setter
    def header(self, v):
        self._m_header = v

    def _write_header(self):
        self._should_write_header = False
        _pos = self._io.pos()
        self._io.seek(1)
        self._m_header._write__seq(self._io)
        self._io.seek(_pos)


    def _check_header(self):
        pass
        if self._m_header._root != self._root:
            raise kaitaistruct.ConsistencyError(u"header", self._m_header._root, self._root)
        if self._m_header._parent != self:
            raise kaitaistruct.ConsistencyError(u"header", self._m_header._parent, self)

    @property
    def header_casted(self):
        if hasattr(self, '_m_header_casted'):
            return self._m_header_casted

        self._m_header_casted = self.header
        return getattr(self, '_m_header_casted', None)

    def _invalidate_header_casted(self):
        del self._m_header_casted


# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceStd(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_header = False
        self.header__to_write = True

    def _read(self):
        pass


    def _fetch_instances(self):
        pass
        _ = self.header


    def _write__seq(self, io=None):
        super(InstanceStd, self)._write__seq(io)
        self._should_write_header = self.header__to_write


    def _check(self):
        pass

    @property
    def header(self):
        if self._should_write_header:
            self._write_header()
        if hasattr(self, '_m_header'):
            return self._m_header

        _pos = self._io.pos()
        self._io.seek(2)
        self._m_header = (self._io.read_bytes(5)).decode(u"ASCII")
        self._io.seek(_pos)
        return getattr(self, '_m_header', None)

    @header.setter
    def header(self, v):
        self._m_header = v

    def _write_header(self):
        self._should_write_header = False
        _pos = self._io.pos()
        self._io.seek(2)
        self._io.write_bytes((self._m_header).encode(u"ASCII"))
        self._io.seek(_pos)


    def _check_header(self):
        pass
        if len((self._m_header).encode(u"ASCII")) != 5:
            raise kaitaistruct.ConsistencyError(u"header", len((self._m_header).encode(u"ASCII")), 5)



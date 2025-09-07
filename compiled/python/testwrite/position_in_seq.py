# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class PositionInSeq(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(PositionInSeq, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_header = False
        self.header__enabled = True

    def _read(self):
        self.numbers = []
        for i in range(self.header.qty_numbers):
            self.numbers.append(self._io.read_u1())

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.numbers)):
            pass

        _ = self.header
        if hasattr(self, '_m_header'):
            pass
            self._m_header._fetch_instances()



    def _write__seq(self, io=None):
        super(PositionInSeq, self)._write__seq(io)
        self._should_write_header = self.header__enabled
        if len(self.numbers) != self.header.qty_numbers:
            raise kaitaistruct.ConsistencyError(u"numbers", self.header.qty_numbers, len(self.numbers))
        for i in range(len(self.numbers)):
            pass
            self._io.write_u1(self.numbers[i])



    def _check(self):
        for i in range(len(self.numbers)):
            pass

        if self.header__enabled:
            pass
            if self._m_header._root != self._root:
                raise kaitaistruct.ConsistencyError(u"header", self._root, self._m_header._root)
            if self._m_header._parent != self:
                raise kaitaistruct.ConsistencyError(u"header", self, self._m_header._parent)

        self._dirty = False

    class HeaderObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(PositionInSeq.HeaderObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.qty_numbers = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(PositionInSeq.HeaderObj, self)._write__seq(io)
            self._io.write_u4le(self.qty_numbers)


        def _check(self):
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
        self._io.seek(16)
        self._m_header = PositionInSeq.HeaderObj(self._io, self, self._root)
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
        self._io.seek(16)
        self._m_header._write__seq(self._io)
        self._io.seek(_pos)



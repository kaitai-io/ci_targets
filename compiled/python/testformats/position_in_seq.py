# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class PositionInSeq(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(PositionInSeq, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.numbers = []
        for i in range(self.header.qty_numbers):
            self.numbers.append(self._io.read_u1())



    def _fetch_instances(self):
        pass
        for i in range(len(self.numbers)):
            pass

        _ = self.header
        if hasattr(self, '_m_header'):
            pass
            self._m_header._fetch_instances()


    class HeaderObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(PositionInSeq.HeaderObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.qty_numbers = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    @property
    def header(self):
        if hasattr(self, '_m_header'):
            return self._m_header

        _pos = self._io.pos()
        self._io.seek(16)
        self._m_header = PositionInSeq.HeaderObj(self._io, self, self._root)
        self._io.seek(_pos)
        return getattr(self, '_m_header', None)



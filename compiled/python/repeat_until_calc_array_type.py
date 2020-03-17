# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilCalcArrayType(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_records = []
        self.records = []
        i = 0
        while True:
            _buf = self._io.read_bytes(5)
            self._raw_records.append(_buf)
            _io__raw_records = KaitaiStream(BytesIO(self._raw_records[-1]))
            _ = RepeatUntilCalcArrayType.Record(_io__raw_records, self, self._root)
            self.records.append(_)
            if _.marker == 170:
                break
            i += 1

    class Record(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.marker = self._io.read_u1()
            self.body = self._io.read_u4le()


    @property
    def recs_accessor(self):
        if hasattr(self, '_m_recs_accessor'):
            return self._m_recs_accessor if hasattr(self, '_m_recs_accessor') else None

        self._m_recs_accessor = self.records
        return self._m_recs_accessor if hasattr(self, '_m_recs_accessor') else None

    @property
    def first_rec(self):
        if hasattr(self, '_m_first_rec'):
            return self._m_first_rec if hasattr(self, '_m_first_rec') else None

        self._m_first_rec = self.recs_accessor[0]
        return self._m_first_rec if hasattr(self, '_m_first_rec') else None



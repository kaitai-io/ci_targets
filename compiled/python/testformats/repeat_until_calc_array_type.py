# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilCalcArrayType(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(RepeatUntilCalcArrayType, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
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


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()


    class Record(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(RepeatUntilCalcArrayType.Record, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.marker = self._io.read_u1()
            self.body = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    @property
    def first_rec(self):
        if hasattr(self, '_m_first_rec'):
            return self._m_first_rec

        self._m_first_rec = self.recs_accessor[0]
        return getattr(self, '_m_first_rec', None)

    @property
    def recs_accessor(self):
        if hasattr(self, '_m_recs_accessor'):
            return self._m_recs_accessor

        self._m_recs_accessor = self.records
        return getattr(self, '_m_recs_accessor', None)



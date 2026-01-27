# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilCalcArrayType(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_records = []
        self.records = []
        i = 0
        while True:
            _buf = self._io.read_bytes(5)
            self._raw_records.append(_buf)
            _io__raw_records = KaitaiStream(BytesIO(self._raw_records[-1]))
            _t_records = RepeatUntilCalcArrayType.Record(_io__raw_records, self, self._root)
            try:
                _t_records._read()
            finally:
                _ = _t_records
                self.records.append(_)
            if _.marker == 170:
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._raw_records = []
        for i in range(len(self.records)):
            pass
            _io__raw_records = KaitaiStream(BytesIO(bytes(5)))
            self._io.add_child_stream(_io__raw_records)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (5))
            def handler(parent, _io__raw_records=_io__raw_records, i=i):
                _buf = _io__raw_records.to_byte_array()
                self._raw_records.append(_buf)
                if len(self._raw_records[i]) != 5:
                    raise kaitaistruct.ConsistencyError("raw(records)", 5, len(self._raw_records[i]))
                parent.write_bytes(self._raw_records[i])
            _io__raw_records.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records[i]._write__seq(_io__raw_records)



    def _check(self):
        if len(self.records) == 0:
            raise kaitaistruct.ConsistencyError("records", 0, len(self.records))
        for i in range(len(self.records)):
            pass
            if self.records[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("records", self._root, self.records[i]._root)
            if self.records[i]._parent != self:
                raise kaitaistruct.ConsistencyError("records", self, self.records[i]._parent)
            _ = self.records[i]
            if (_.marker == 170) != (i == len(self.records) - 1):
                raise kaitaistruct.ConsistencyError("records", i == len(self.records) - 1, _.marker == 170)

        self._dirty = False

    class Record(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.marker = self._io.read_u1()
            self.body = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.marker)
            self._io.write_u4le(self.body)


        def _check(self):
            self._dirty = False


    @property
    def first_rec(self):
        if hasattr(self, '_m_first_rec'):
            return self._m_first_rec

        self._m_first_rec = self.recs_accessor[0]
        return getattr(self, '_m_first_rec', None)

    def _invalidate_first_rec(self):
        del self._m_first_rec
    @property
    def recs_accessor(self):
        if hasattr(self, '_m_recs_accessor'):
            return self._m_recs_accessor

        self._m_recs_accessor = self.records
        return getattr(self, '_m_recs_accessor', None)

    def _invalidate_recs_accessor(self):
        del self._m_recs_accessor


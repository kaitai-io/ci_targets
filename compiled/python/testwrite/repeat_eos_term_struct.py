# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosTermStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_records = []
        self.records__outer_size = []
        self.records = []
        i = 0
        while not self._io.is_eof():
            self._raw_records.append(self._io.read_bytes_term(178, True, True, True))
            self.records__outer_size.append(len(self._raw_records[i]))
            _io__raw_records = KaitaiStream(BytesIO(self._raw_records[-1]))
            _t_records = RepeatEosTermStruct.BytesWrapper(_io__raw_records, self, self._root)
            try:
                _t_records._read()
            finally:
                self.records.append(_t_records)
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(RepeatEosTermStruct, self)._write__seq(io)
        self._raw_records = []
        for i in range(len(self.records)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"records", self._io.size() - self._io.pos(), 0)
            _io__raw_records = KaitaiStream(BytesIO(bytearray(self.records__outer_size[i])))
            self._io.add_child_stream(_io__raw_records)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (self.records__outer_size[i]))
            def handler(parent, _io__raw_records=_io__raw_records, i=i):
                self._raw_records.append(_io__raw_records.to_byte_array())
                if len(self._raw_records[i]) == 0:
                    raise kaitaistruct.ConsistencyError(u"raw(records)", len(self._raw_records[i]), 0)
                if KaitaiStream.byte_array_index_of(self._raw_records[i], 178) != len(self._raw_records[i]) - 1:
                    raise kaitaistruct.ConsistencyError(u"raw(records)", KaitaiStream.byte_array_index_of(self._raw_records[i], 178), len(self._raw_records[i]) - 1)
                parent.write_bytes(self._raw_records[i])
            _io__raw_records.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records[i]._write__seq(_io__raw_records)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"records", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass
        for i in range(len(self.records)):
            pass
            if self.records[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records", self.records[i]._root, self._root)
            if self.records[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records", self.records[i]._parent, self)


    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RepeatEosTermStruct.BytesWrapper, self)._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass




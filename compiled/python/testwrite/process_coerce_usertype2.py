# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCoerceUsertype2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ProcessCoerceUsertype2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        for i in range(2):
            _t_records = ProcessCoerceUsertype2.Record(self._io, self, self._root)
            try:
                _t_records._read()
            finally:
                self.records.append(_t_records)

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(ProcessCoerceUsertype2, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            self.records[i]._write__seq(self._io)



    def _check(self):
        if len(self.records) != 2:
            raise kaitaistruct.ConsistencyError(u"records", 2, len(self.records))
        for i in range(len(self.records)):
            pass
            if self.records[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records", self._root, self.records[i]._root)
            if self.records[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records", self, self.records[i]._parent)

        self._dirty = False

    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ProcessCoerceUsertype2.Foo, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ProcessCoerceUsertype2.Foo, self)._write__seq(io)
            self._io.write_u4le(self.value)


        def _check(self):
            self._dirty = False


    class Record(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ProcessCoerceUsertype2.Record, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.flag = self._io.read_u1()
            if self.flag == 0:
                pass
                self.buf_unproc = ProcessCoerceUsertype2.Foo(self._io, self, self._root)
                self.buf_unproc._read()

            if self.flag != 0:
                pass
                self._raw__raw_buf_proc = self._io.read_bytes(4)
                self._raw_buf_proc = KaitaiStream.process_xor_one(self._raw__raw_buf_proc, 170)
                _io__raw_buf_proc = KaitaiStream(BytesIO(self._raw_buf_proc))
                self.buf_proc = ProcessCoerceUsertype2.Foo(_io__raw_buf_proc, self, self._root)
                self.buf_proc._read()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self.flag == 0:
                pass
                self.buf_unproc._fetch_instances()

            if self.flag != 0:
                pass
                self.buf_proc._fetch_instances()



        def _write__seq(self, io=None):
            super(ProcessCoerceUsertype2.Record, self)._write__seq(io)
            self._io.write_u1(self.flag)
            if self.flag == 0:
                pass
                self.buf_unproc._write__seq(self._io)

            if self.flag != 0:
                pass
                _io__raw_buf_proc = KaitaiStream(BytesIO(bytearray(4)))
                self._io.add_child_stream(_io__raw_buf_proc)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                _process_val = 170
                def handler(parent, _io__raw_buf_proc=_io__raw_buf_proc, _process_val=_process_val):
                    self._raw_buf_proc = _io__raw_buf_proc.to_byte_array()
                    self._raw__raw_buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, _process_val)
                    if len(self._raw__raw_buf_proc) != 4:
                        raise kaitaistruct.ConsistencyError(u"raw(buf_proc)", 4, len(self._raw__raw_buf_proc))
                    parent.write_bytes(self._raw__raw_buf_proc)
                _io__raw_buf_proc.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.buf_proc._write__seq(_io__raw_buf_proc)



        def _check(self):
            if self.flag == 0:
                pass
                if self.buf_unproc._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", self._root, self.buf_unproc._root)
                if self.buf_unproc._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", self, self.buf_unproc._parent)

            if self.flag != 0:
                pass
                if self.buf_proc._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", self._root, self.buf_proc._root)
                if self.buf_proc._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", self, self.buf_proc._parent)

            self._dirty = False

        @property
        def buf(self):
            if hasattr(self, '_m_buf'):
                return self._m_buf

            self._m_buf = (self.buf_unproc if self.flag == 0 else self.buf_proc)
            return getattr(self, '_m_buf', None)

        def _invalidate_buf(self):
            del self._m_buf



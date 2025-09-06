# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCoerceBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ProcessCoerceBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        for i in range(2):
            _t_records = ProcessCoerceBytes.Record(self._io, self, self._root)
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
        super(ProcessCoerceBytes, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            self.records[i]._write__seq(self._io)



    def _check(self):
        if len(self.records) != 2:
            raise kaitaistruct.ConsistencyError(u"records", len(self.records), 2)
        for i in range(len(self.records)):
            pass
            if self.records[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records", self.records[i]._root, self._root)
            if self.records[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records", self.records[i]._parent, self)

        self._dirty = False

    class Record(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ProcessCoerceBytes.Record, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.flag = self._io.read_u1()
            if self.flag == 0:
                pass
                self.buf_unproc = self._io.read_bytes(4)

            if self.flag != 0:
                pass
                self._raw_buf_proc = self._io.read_bytes(4)
                self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self.flag == 0:
                pass

            if self.flag != 0:
                pass



        def _write__seq(self, io=None):
            super(ProcessCoerceBytes.Record, self)._write__seq(io)
            self._io.write_u1(self.flag)
            if self.flag == 0:
                pass
                self._io.write_bytes(self.buf_unproc)

            if self.flag != 0:
                pass
                self._raw_buf_proc = KaitaiStream.process_xor_one(self.buf_proc, 170)
                if len(self._raw_buf_proc) != 4:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", len(self._raw_buf_proc), 4)
                self._io.write_bytes(self._raw_buf_proc)



        def _check(self):
            if self.flag == 0:
                pass
                if len(self.buf_unproc) != 4:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", len(self.buf_unproc), 4)

            if self.flag != 0:
                pass

            self._dirty = False

        @property
        def buf(self):
            if hasattr(self, '_m_buf'):
                return self._m_buf

            self._m_buf = (self.buf_unproc if self.flag == 0 else self.buf_proc)
            return getattr(self, '_m_buf', None)

        def _invalidate_buf(self):
            del self._m_buf



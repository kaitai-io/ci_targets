# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCoerceBytes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.records = []
        for i in range(2):
            self.records.append(ProcessCoerceBytes.Record(self._io, self, self._root))



    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()


    class Record(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.flag = self._io.read_u1()
            if self.flag == 0:
                pass
                self.buf_unproc = self._io.read_bytes(4)

            if self.flag != 0:
                pass
                self._raw_buf_proc = self._io.read_bytes(4)
                self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)



        def _fetch_instances(self):
            pass
            if self.flag == 0:
                pass

            if self.flag != 0:
                pass


        @property
        def buf(self):
            if hasattr(self, '_m_buf'):
                return self._m_buf

            self._m_buf = (self.buf_unproc if self.flag == 0 else self.buf_proc)
            return getattr(self, '_m_buf', None)




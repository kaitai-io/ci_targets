# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatUntilBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        i = 0
        while True:
            _ = self._io.read_bytes(5)
            self.records.append(_)
            if KaitaiStream.byte_array_index(_, 0) == 170:
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



    def _write__seq(self, io=None):
        super(RepeatUntilBytes, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            self._io.write_bytes(self.records[i])



    def _check(self):
        if len(self.records) == 0:
            raise kaitaistruct.ConsistencyError(u"records", len(self.records), 0)
        for i in range(len(self.records)):
            pass
            if len(self.records[i]) != 5:
                raise kaitaistruct.ConsistencyError(u"records", len(self.records[i]), 5)
            _ = self.records[i]
            if (KaitaiStream.byte_array_index(_, 0) == 170) != (i == len(self.records) - 1):
                raise kaitaistruct.ConsistencyError(u"records", KaitaiStream.byte_array_index(_, 0) == 170, i == len(self.records) - 1)

        self._dirty = False



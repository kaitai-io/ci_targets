# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatNBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        for i in range(3):
            self.records.append(self._io.read_bytes(5))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



    def _write__seq(self, io=None):
        super(RepeatNBytes, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            self._io.write_bytes(self.records[i])



    def _check(self):
        if len(self.records) != 3:
            raise kaitaistruct.ConsistencyError(u"records", 3, len(self.records))
        for i in range(len(self.records)):
            pass
            if len(self.records[i]) != 5:
                raise kaitaistruct.ConsistencyError(u"records", 5, len(self.records[i]))

        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilBytesPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        i = 0
        while True:
            _ = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(5), 170), 85, True)
            self.records.append(_)
            if _ == b"\xAA\x55":
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



    def _write__seq(self, io=None):
        super(RepeatUntilBytesPadTerm, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            self._io.write_bytes_limit(self.records[i], 5, 170, 170)



    def _check(self):
        pass
        if len(self.records) == 0:
            raise kaitaistruct.ConsistencyError(u"records", len(self.records), 0)
        for i in range(len(self.records)):
            pass
            if len(self.records[i]) > 5:
                raise kaitaistruct.ConsistencyError(u"records", len(self.records[i]), 5)
            if  ((KaitaiStream.byte_array_index_of(self.records[i], 85) != -1) and (KaitaiStream.byte_array_index_of(self.records[i], 85) != len(self.records[i]) - 1)) :
                raise kaitaistruct.ConsistencyError(u"records", KaitaiStream.byte_array_index_of(self.records[i], 85), len(self.records[i]) - 1)
            if KaitaiStream.byte_array_index_of(self.records[i], 85) == -1:
                pass
                if  ((len(self.records[i]) != 0) and (KaitaiStream.byte_array_index(self.records[i], -1) == 170)) :
                    raise kaitaistruct.ConsistencyError(u"records", KaitaiStream.byte_array_index(self.records[i], -1), 170)

            _ = self.records[i]
            if (_ == b"\xAA\x55") != (i == len(self.records) - 1):
                raise kaitaistruct.ConsistencyError(u"records", _ == b"\xAA\x55", i == len(self.records) - 1)




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilBytesPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
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
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.records)):
            pass
            self._io.write_bytes_limit(self.records[i], 5, 170, 170)



    def _check(self):
        if len(self.records) == 0:
            raise kaitaistruct.ConsistencyError("records", 0, len(self.records))
        for i in range(len(self.records)):
            pass
            if len(self.records[i]) > 5:
                raise kaitaistruct.ConsistencyError("records", 5, len(self.records[i]))
            if  ((KaitaiStream.byte_array_index_of(self.records[i], 85) != -1) and (KaitaiStream.byte_array_index_of(self.records[i], 85) != len(self.records[i]) - 1)) :
                raise kaitaistruct.ConsistencyError("records", len(self.records[i]) - 1, KaitaiStream.byte_array_index_of(self.records[i], 85))
            if KaitaiStream.byte_array_index_of(self.records[i], 85) == -1:
                pass
                if  ((len(self.records[i]) != 0) and (self.records[i][-1] == 170)) :
                    raise kaitaistruct.ConsistencyError("records", 170, self.records[i][-1])

            _ = self.records[i]
            if (_ == b"\xAA\x55") != (i == len(self.records) - 1):
                raise kaitaistruct.ConsistencyError("records", i == len(self.records) - 1, _ == b"\xAA\x55")

        self._dirty = False



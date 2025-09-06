# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosBytesPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatEosBytesPadTerm, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records = []
        i = 0
        while not self._io.is_eof():
            self.records.append(KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(5), 170), 85, True))
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



    def _write__seq(self, io=None):
        super(RepeatEosBytesPadTerm, self)._write__seq(io)
        for i in range(len(self.records)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"records", self._io.size() - self._io.pos(), 0)
            self._io.write_bytes_limit(self.records[i], 5, 170, 170)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"records", self._io.size() - self._io.pos(), 0)


    def _check(self):
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


        self._dirty = False



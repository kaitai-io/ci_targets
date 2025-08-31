# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BytesPadTermEqual(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.s2 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, True)
        self.s3 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 43, False)
        self.s4 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 46, True)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(BytesPadTermEqual, self)._write__seq(io)
        self._io.write_bytes_limit(self.s1, 20, 64, 64)
        self._io.write_bytes_limit(self.s2, 20, 43, 43)
        self._io.write_bytes_limit(self.s3, 20, 43, 43)
        self._io.write_bytes_limit(self.s4, 20, 46, 46)


    def _check(self):
        pass
        if len(self.s1) > 20:
            raise kaitaistruct.ConsistencyError(u"s1", len(self.s1), 20)
        if KaitaiStream.byte_array_index_of(self.s1, 64) != -1:
            raise kaitaistruct.ConsistencyError(u"s1", KaitaiStream.byte_array_index_of(self.s1, 64), -1)
        if len(self.s2) > 20:
            raise kaitaistruct.ConsistencyError(u"s2", len(self.s2), 20)
        if  ((KaitaiStream.byte_array_index_of(self.s2, 64) != -1) and (KaitaiStream.byte_array_index_of(self.s2, 64) != len(self.s2) - 1)) :
            raise kaitaistruct.ConsistencyError(u"s2", KaitaiStream.byte_array_index_of(self.s2, 64), len(self.s2) - 1)
        if KaitaiStream.byte_array_index_of(self.s2, 64) == -1:
            pass
            if  ((len(self.s2) != 0) and (KaitaiStream.byte_array_index(self.s2, -1) == 43)) :
                raise kaitaistruct.ConsistencyError(u"s2", KaitaiStream.byte_array_index(self.s2, -1), 43)

        if len(self.s3) > 20:
            raise kaitaistruct.ConsistencyError(u"s3", len(self.s3), 20)
        if KaitaiStream.byte_array_index_of(self.s3, 43) != -1:
            raise kaitaistruct.ConsistencyError(u"s3", KaitaiStream.byte_array_index_of(self.s3, 43), -1)
        if len(self.s4) > 20:
            raise kaitaistruct.ConsistencyError(u"s4", len(self.s4), 20)
        if len(self.s4) < 20:
            pass
            if len(self.s4) == 0:
                raise kaitaistruct.ConsistencyError(u"s4", len(self.s4), 0)
            if KaitaiStream.byte_array_index_of(self.s4, 46) != len(self.s4) - 1:
                raise kaitaistruct.ConsistencyError(u"s4", KaitaiStream.byte_array_index_of(self.s4, 46), len(self.s4) - 1)

        if len(self.s4) == 20:
            pass
            if  ((KaitaiStream.byte_array_index_of(self.s4, 46) != -1) and (KaitaiStream.byte_array_index_of(self.s4, 46) != len(self.s4) - 1)) :
                raise kaitaistruct.ConsistencyError(u"s4", KaitaiStream.byte_array_index_of(self.s4, 46), len(self.s4) - 1)




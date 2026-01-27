# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class BytesPadTermEqual(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.s2 = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, True)
        self.s3 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 43, False)
        self.s4 = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 46, True)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes_limit(self.s1, 20, 64, 64)
        self._io.write_bytes_limit(self.s2, 20, 43, 43)
        self._io.write_bytes_limit(self.s3, 20, 43, 43)
        self._io.write_bytes_limit(self.s4, 20, 46, 46)


    def _check(self):
        if len(self.s1) > 20:
            raise kaitaistruct.ConsistencyError("s1", 20, len(self.s1))
        if KaitaiStream.byte_array_index_of(self.s1, 64) != -1:
            raise kaitaistruct.ConsistencyError("s1", -1, KaitaiStream.byte_array_index_of(self.s1, 64))
        if len(self.s2) > 20:
            raise kaitaistruct.ConsistencyError("s2", 20, len(self.s2))
        if  ((KaitaiStream.byte_array_index_of(self.s2, 64) != -1) and (KaitaiStream.byte_array_index_of(self.s2, 64) != len(self.s2) - 1)) :
            raise kaitaistruct.ConsistencyError("s2", len(self.s2) - 1, KaitaiStream.byte_array_index_of(self.s2, 64))
        if KaitaiStream.byte_array_index_of(self.s2, 64) == -1:
            pass
            if  ((len(self.s2) != 0) and (self.s2[-1] == 43)) :
                raise kaitaistruct.ConsistencyError("s2", 43, self.s2[-1])

        if len(self.s3) > 20:
            raise kaitaistruct.ConsistencyError("s3", 20, len(self.s3))
        if KaitaiStream.byte_array_index_of(self.s3, 43) != -1:
            raise kaitaistruct.ConsistencyError("s3", -1, KaitaiStream.byte_array_index_of(self.s3, 43))
        if len(self.s4) > 20:
            raise kaitaistruct.ConsistencyError("s4", 20, len(self.s4))
        if len(self.s4) < 20:
            pass
            if len(self.s4) == 0:
                raise kaitaistruct.ConsistencyError("s4", 0, len(self.s4))
            if KaitaiStream.byte_array_index_of(self.s4, 46) != len(self.s4) - 1:
                raise kaitaistruct.ConsistencyError("s4", len(self.s4) - 1, KaitaiStream.byte_array_index_of(self.s4, 46))

        if len(self.s4) == 20:
            pass
            if  ((KaitaiStream.byte_array_index_of(self.s4, 46) != -1) and (KaitaiStream.byte_array_index_of(self.s4, 46) != len(self.s4) - 1)) :
                raise kaitaistruct.ConsistencyError("s4", len(self.s4) - 1, KaitaiStream.byte_array_index_of(self.s4, 46))

        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class TermBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = self._io.read_bytes_term(124, False, True, True)
        self.s2 = self._io.read_bytes_term(124, False, False, True)
        self.s3 = self._io.read_bytes_term(64, True, True, True)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes(self.s1)
        self._io.write_u1(124)
        self._io.write_bytes(self.s2)
        _pos = self._io.pos()
        self._io.write_u1(124)
        self._io.seek(_pos)
        self._io.write_bytes(self.s3)


    def _check(self):
        if KaitaiStream.byte_array_index_of(self.s1, 124) != -1:
            raise kaitaistruct.ConsistencyError("s1", -1, KaitaiStream.byte_array_index_of(self.s1, 124))
        if KaitaiStream.byte_array_index_of(self.s2, 124) != -1:
            raise kaitaistruct.ConsistencyError("s2", -1, KaitaiStream.byte_array_index_of(self.s2, 124))
        if len(self.s3) == 0:
            raise kaitaistruct.ConsistencyError("s3", 0, len(self.s3))
        if KaitaiStream.byte_array_index_of(self.s3, 64) != len(self.s3) - 1:
            raise kaitaistruct.ConsistencyError("s3", len(self.s3) - 1, KaitaiStream.byte_array_index_of(self.s3, 64))
        self._dirty = False



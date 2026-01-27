# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class TermU1Val(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_bytes_term(227, False, False, True)
        self.bar = (self._io.read_bytes_term(171, True, True, True)).decode("UTF-8")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes(self.foo)
        _pos = self._io.pos()
        self._io.write_u1(227)
        self._io.seek(_pos)
        self._io.write_bytes((self.bar).encode("UTF-8"))


    def _check(self):
        if KaitaiStream.byte_array_index_of(self.foo, 227) != -1:
            raise kaitaistruct.ConsistencyError("foo", -1, KaitaiStream.byte_array_index_of(self.foo, 227))
        if len((self.bar).encode("UTF-8")) == 0:
            raise kaitaistruct.ConsistencyError("bar", 0, len((self.bar).encode("UTF-8")))
        if KaitaiStream.byte_array_index_of((self.bar).encode("UTF-8"), 171) != len((self.bar).encode("UTF-8")) - 1:
            raise kaitaistruct.ConsistencyError("bar", len((self.bar).encode("UTF-8")) - 1, KaitaiStream.byte_array_index_of((self.bar).encode("UTF-8"), 171))
        self._dirty = False



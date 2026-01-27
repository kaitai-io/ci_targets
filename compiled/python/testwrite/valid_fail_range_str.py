# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidFailRangeStr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = (self._io.read_bytes(2)).decode("ASCII")
        if not self.foo >= "P":
            raise kaitaistruct.ValidationLessThanError("P", self.foo, self._io, "/seq/0")
        if not self.foo <= "P1":
            raise kaitaistruct.ValidationGreaterThanError("P1", self.foo, self._io, "/seq/0")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes((self.foo).encode("ASCII"))


    def _check(self):
        if len((self.foo).encode("ASCII")) != 2:
            raise kaitaistruct.ConsistencyError("foo", 2, len((self.foo).encode("ASCII")))
        if not self.foo >= "P":
            raise kaitaistruct.ValidationLessThanError("P", self.foo, None, "/seq/0")
        if not self.foo <= "P1":
            raise kaitaistruct.ValidationGreaterThanError("P1", self.foo, None, "/seq/0")
        self._dirty = False



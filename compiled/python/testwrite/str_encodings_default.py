# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEncodingsDefault(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode("UTF-8")
        self.rest = StrEncodingsDefault.Subtype(self._io, self, self._root)
        self.rest._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.rest._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode("UTF-8"))
        self.rest._write__seq(self._io)


    def _check(self):
        if len((self.str1).encode("UTF-8")) != self.len_of_1:
            raise kaitaistruct.ConsistencyError("str1", self.len_of_1, len((self.str1).encode("UTF-8")))
        if self.rest._root != self._root:
            raise kaitaistruct.ConsistencyError("rest", self._root, self.rest._root)
        if self.rest._parent != self:
            raise kaitaistruct.ConsistencyError("rest", self, self.rest._parent)
        self._dirty = False

    class Subtype(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.len_of_2 = self._io.read_u2le()
            self.str2 = (self._io.read_bytes(self.len_of_2)).decode("UTF-8")
            self.len_of_3 = self._io.read_u2le()
            self.str3 = (self._io.read_bytes(self.len_of_3)).decode("Shift_JIS")
            self.len_of_4 = self._io.read_u2le()
            self.str4 = (self._io.read_bytes(self.len_of_4)).decode("IBM437")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u2le(self.len_of_2)
            self._io.write_bytes((self.str2).encode("UTF-8"))
            self._io.write_u2le(self.len_of_3)
            self._io.write_bytes((self.str3).encode("Shift_JIS"))
            self._io.write_u2le(self.len_of_4)
            self._io.write_bytes((self.str4).encode("IBM437"))


        def _check(self):
            if len((self.str2).encode("UTF-8")) != self.len_of_2:
                raise kaitaistruct.ConsistencyError("str2", self.len_of_2, len((self.str2).encode("UTF-8")))
            if len((self.str3).encode("Shift_JIS")) != self.len_of_3:
                raise kaitaistruct.ConsistencyError("str3", self.len_of_3, len((self.str3).encode("Shift_JIS")))
            if len((self.str4).encode("IBM437")) != self.len_of_4:
                raise kaitaistruct.ConsistencyError("str4", self.len_of_4, len((self.str4).encode("IBM437")))
            self._dirty = False




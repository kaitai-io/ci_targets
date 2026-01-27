# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidEqStrEncodings(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode("ASCII")
        if not self.str1 == "Some ASCII":
            raise kaitaistruct.ValidationNotEqualError("Some ASCII", self.str1, self._io, "/seq/1")
        self.len_of_2 = self._io.read_u2le()
        self.str2 = (self._io.read_bytes(self.len_of_2)).decode("UTF-8")
        if not self.str2 == "\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", self.str2, self._io, "/seq/3")
        self.len_of_3 = self._io.read_u2le()
        self.str3 = (self._io.read_bytes(self.len_of_3)).decode("Shift_JIS")
        if not self.str3 == "\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", self.str3, self._io, "/seq/5")
        self.len_of_4 = self._io.read_u2le()
        self.str4 = (self._io.read_bytes(self.len_of_4)).decode("IBM437")
        if not self.str4 == "\u2591\u2592\u2593":
            raise kaitaistruct.ValidationNotEqualError("\u2591\u2592\u2593", self.str4, self._io, "/seq/7")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode("ASCII"))
        self._io.write_u2le(self.len_of_2)
        self._io.write_bytes((self.str2).encode("UTF-8"))
        self._io.write_u2le(self.len_of_3)
        self._io.write_bytes((self.str3).encode("Shift_JIS"))
        self._io.write_u2le(self.len_of_4)
        self._io.write_bytes((self.str4).encode("IBM437"))


    def _check(self):
        if len((self.str1).encode("ASCII")) != self.len_of_1:
            raise kaitaistruct.ConsistencyError("str1", self.len_of_1, len((self.str1).encode("ASCII")))
        if not self.str1 == "Some ASCII":
            raise kaitaistruct.ValidationNotEqualError("Some ASCII", self.str1, None, "/seq/1")
        if len((self.str2).encode("UTF-8")) != self.len_of_2:
            raise kaitaistruct.ConsistencyError("str2", self.len_of_2, len((self.str2).encode("UTF-8")))
        if not self.str2 == "\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", self.str2, None, "/seq/3")
        if len((self.str3).encode("Shift_JIS")) != self.len_of_3:
            raise kaitaistruct.ConsistencyError("str3", self.len_of_3, len((self.str3).encode("Shift_JIS")))
        if not self.str3 == "\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError("\u3053\u3093\u306b\u3061\u306f", self.str3, None, "/seq/5")
        if len((self.str4).encode("IBM437")) != self.len_of_4:
            raise kaitaistruct.ConsistencyError("str4", self.len_of_4, len((self.str4).encode("IBM437")))
        if not self.str4 == "\u2591\u2592\u2593":
            raise kaitaistruct.ValidationNotEqualError("\u2591\u2592\u2593", self.str4, None, "/seq/7")
        self._dirty = False



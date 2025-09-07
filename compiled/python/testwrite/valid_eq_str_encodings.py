# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidEqStrEncodings(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidEqStrEncodings, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode(u"ASCII")
        if not self.str1 == u"Some ASCII":
            raise kaitaistruct.ValidationNotEqualError(u"Some ASCII", self.str1, self._io, u"/seq/1")
        self.len_of_2 = self._io.read_u2le()
        self.str2 = (self._io.read_bytes(self.len_of_2)).decode(u"UTF-8")
        if not self.str2 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str2, self._io, u"/seq/3")
        self.len_of_3 = self._io.read_u2le()
        self.str3 = (self._io.read_bytes(self.len_of_3)).decode(u"Shift_JIS")
        if not self.str3 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str3, self._io, u"/seq/5")
        self.len_of_4 = self._io.read_u2le()
        self.str4 = (self._io.read_bytes(self.len_of_4)).decode(u"IBM437")
        if not self.str4 == u"\u2591\u2592\u2593":
            raise kaitaistruct.ValidationNotEqualError(u"\u2591\u2592\u2593", self.str4, self._io, u"/seq/7")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidEqStrEncodings, self)._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        self._io.write_bytes((self.str1).encode(u"ASCII"))
        self._io.write_u2le(self.len_of_2)
        self._io.write_bytes((self.str2).encode(u"UTF-8"))
        self._io.write_u2le(self.len_of_3)
        self._io.write_bytes((self.str3).encode(u"Shift_JIS"))
        self._io.write_u2le(self.len_of_4)
        self._io.write_bytes((self.str4).encode(u"IBM437"))


    def _check(self):
        if len((self.str1).encode(u"ASCII")) != self.len_of_1:
            raise kaitaistruct.ConsistencyError(u"str1", self.len_of_1, len((self.str1).encode(u"ASCII")))
        if not self.str1 == u"Some ASCII":
            raise kaitaistruct.ValidationNotEqualError(u"Some ASCII", self.str1, None, u"/seq/1")
        if len((self.str2).encode(u"UTF-8")) != self.len_of_2:
            raise kaitaistruct.ConsistencyError(u"str2", self.len_of_2, len((self.str2).encode(u"UTF-8")))
        if not self.str2 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str2, None, u"/seq/3")
        if len((self.str3).encode(u"Shift_JIS")) != self.len_of_3:
            raise kaitaistruct.ConsistencyError(u"str3", self.len_of_3, len((self.str3).encode(u"Shift_JIS")))
        if not self.str3 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str3, None, u"/seq/5")
        if len((self.str4).encode(u"IBM437")) != self.len_of_4:
            raise kaitaistruct.ConsistencyError(u"str4", self.len_of_4, len((self.str4).encode(u"IBM437")))
        if not self.str4 == u"\u2591\u2592\u2593":
            raise kaitaistruct.ValidationNotEqualError(u"\u2591\u2592\u2593", self.str4, None, u"/seq/7")
        self._dirty = False



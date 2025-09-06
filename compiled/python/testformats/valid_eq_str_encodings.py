# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidEqStrEncodings(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ValidEqStrEncodings, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

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


    def _fetch_instances(self):
        pass



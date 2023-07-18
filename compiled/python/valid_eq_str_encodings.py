# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidEqStrEncodings(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode("ASCII")
        if not self.str1 == u"Some ASCII":
            raise kaitaistruct.ValidationNotEqualError(u"Some ASCII", self.str1, self._io, u"/seq/1")
        self.len_of_2 = self._io.read_u2le()
        self.str2 = (self._io.read_bytes(self.len_of_2)).decode("UTF-8")
        if not self.str2 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str2, self._io, u"/seq/3")
        self.len_of_3 = self._io.read_u2le()
        self.str3 = (self._io.read_bytes(self.len_of_3)).decode("SJIS")
        if not self.str3 == u"\u3053\u3093\u306b\u3061\u306f":
            raise kaitaistruct.ValidationNotEqualError(u"\u3053\u3093\u306b\u3061\u306f", self.str3, self._io, u"/seq/5")
        self.len_of_4 = self._io.read_u2le()
        self.str4 = (self._io.read_bytes(self.len_of_4)).decode("IBM437")
        if not self.str4 == u"\u2591\u2592\u2593":
            raise kaitaistruct.ValidationNotEqualError(u"\u2591\u2592\u2593", self.str4, self._io, u"/seq/7")



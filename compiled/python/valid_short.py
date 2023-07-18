# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidShort(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.magic1 = self._io.read_bytes(6)
        if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, self._io, u"/seq/0")
        self.uint8 = self._io.read_u1()
        if not self.uint8 == 255:
            raise kaitaistruct.ValidationNotEqualError(255, self.uint8, self._io, u"/seq/1")
        self.sint8 = self._io.read_s1()
        if not self.sint8 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint8, self._io, u"/seq/2")
        self.magic_uint = (self._io.read_bytes(10)).decode("UTF-8")
        if not self.magic_uint == u"PACK-U-DEF":
            raise kaitaistruct.ValidationNotEqualError(u"PACK-U-DEF", self.magic_uint, self._io, u"/seq/3")
        self.uint16 = self._io.read_u2le()
        if not self.uint16 == 65535:
            raise kaitaistruct.ValidationNotEqualError(65535, self.uint16, self._io, u"/seq/4")
        self.uint32 = self._io.read_u4le()
        if not self.uint32 == 4294967295:
            raise kaitaistruct.ValidationNotEqualError(4294967295, self.uint32, self._io, u"/seq/5")
        self.uint64 = self._io.read_u8le()
        if not self.uint64 == 18446744073709551615:
            raise kaitaistruct.ValidationNotEqualError(18446744073709551615, self.uint64, self._io, u"/seq/6")
        self.magic_sint = (self._io.read_bytes(10)).decode("UTF-8")
        if not self.magic_sint == u"PACK-S-DEF":
            raise kaitaistruct.ValidationNotEqualError(u"PACK-S-DEF", self.magic_sint, self._io, u"/seq/7")
        self.sint16 = self._io.read_s2le()
        if not self.sint16 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint16, self._io, u"/seq/8")
        self.sint32 = self._io.read_s4le()
        if not self.sint32 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint32, self._io, u"/seq/9")
        self.sint64 = self._io.read_s8le()
        if not self.sint64 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint64, self._io, u"/seq/10")



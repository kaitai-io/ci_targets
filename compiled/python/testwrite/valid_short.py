# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidShort(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidShort, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

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
        self.magic_uint = (self._io.read_bytes(10)).decode(u"UTF-8")
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
        self.magic_sint = (self._io.read_bytes(10)).decode(u"UTF-8")
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
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidShort, self)._write__seq(io)
        self._io.write_bytes(self.magic1)
        self._io.write_u1(self.uint8)
        self._io.write_s1(self.sint8)
        self._io.write_bytes((self.magic_uint).encode(u"UTF-8"))
        self._io.write_u2le(self.uint16)
        self._io.write_u4le(self.uint32)
        self._io.write_u8le(self.uint64)
        self._io.write_bytes((self.magic_sint).encode(u"UTF-8"))
        self._io.write_s2le(self.sint16)
        self._io.write_s4le(self.sint32)
        self._io.write_s8le(self.sint64)


    def _check(self):
        if len(self.magic1) != 6:
            raise kaitaistruct.ConsistencyError(u"magic1", 6, len(self.magic1))
        if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, None, u"/seq/0")
        if not self.uint8 == 255:
            raise kaitaistruct.ValidationNotEqualError(255, self.uint8, None, u"/seq/1")
        if not self.sint8 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint8, None, u"/seq/2")
        if len((self.magic_uint).encode(u"UTF-8")) != 10:
            raise kaitaistruct.ConsistencyError(u"magic_uint", 10, len((self.magic_uint).encode(u"UTF-8")))
        if not self.magic_uint == u"PACK-U-DEF":
            raise kaitaistruct.ValidationNotEqualError(u"PACK-U-DEF", self.magic_uint, None, u"/seq/3")
        if not self.uint16 == 65535:
            raise kaitaistruct.ValidationNotEqualError(65535, self.uint16, None, u"/seq/4")
        if not self.uint32 == 4294967295:
            raise kaitaistruct.ValidationNotEqualError(4294967295, self.uint32, None, u"/seq/5")
        if not self.uint64 == 18446744073709551615:
            raise kaitaistruct.ValidationNotEqualError(18446744073709551615, self.uint64, None, u"/seq/6")
        if len((self.magic_sint).encode(u"UTF-8")) != 10:
            raise kaitaistruct.ConsistencyError(u"magic_sint", 10, len((self.magic_sint).encode(u"UTF-8")))
        if not self.magic_sint == u"PACK-S-DEF":
            raise kaitaistruct.ValidationNotEqualError(u"PACK-S-DEF", self.magic_sint, None, u"/seq/7")
        if not self.sint16 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint16, None, u"/seq/8")
        if not self.sint32 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint32, None, u"/seq/9")
        if not self.sint64 == -1:
            raise kaitaistruct.ValidationNotEqualError(-1, self.sint64, None, u"/seq/10")
        self._dirty = False



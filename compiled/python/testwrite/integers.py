# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class Integers(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.magic1 = self._io.read_bytes(6)
        if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, self._io, "/seq/0")
        self.uint8 = self._io.read_u1()
        self.sint8 = self._io.read_s1()
        self.magic_uint = self._io.read_bytes(10)
        if not self.magic_uint == b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", self.magic_uint, self._io, "/seq/3")
        self.uint16 = self._io.read_u2le()
        self.uint32 = self._io.read_u4le()
        self.uint64 = self._io.read_u8le()
        self.magic_sint = self._io.read_bytes(10)
        if not self.magic_sint == b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", self.magic_sint, self._io, "/seq/7")
        self.sint16 = self._io.read_s2le()
        self.sint32 = self._io.read_s4le()
        self.sint64 = self._io.read_s8le()
        self.magic_uint_le = self._io.read_bytes(9)
        if not self.magic_uint_le == b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", self.magic_uint_le, self._io, "/seq/11")
        self.uint16le = self._io.read_u2le()
        self.uint32le = self._io.read_u4le()
        self.uint64le = self._io.read_u8le()
        self.magic_sint_le = self._io.read_bytes(9)
        if not self.magic_sint_le == b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", self.magic_sint_le, self._io, "/seq/15")
        self.sint16le = self._io.read_s2le()
        self.sint32le = self._io.read_s4le()
        self.sint64le = self._io.read_s8le()
        self.magic_uint_be = self._io.read_bytes(9)
        if not self.magic_uint_be == b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", self.magic_uint_be, self._io, "/seq/19")
        self.uint16be = self._io.read_u2be()
        self.uint32be = self._io.read_u4be()
        self.uint64be = self._io.read_u8be()
        self.magic_sint_be = self._io.read_bytes(9)
        if not self.magic_sint_be == b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", self.magic_sint_be, self._io, "/seq/23")
        self.sint16be = self._io.read_s2be()
        self.sint32be = self._io.read_s4be()
        self.sint64be = self._io.read_s8be()
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes(self.magic1)
        self._io.write_u1(self.uint8)
        self._io.write_s1(self.sint8)
        self._io.write_bytes(self.magic_uint)
        self._io.write_u2le(self.uint16)
        self._io.write_u4le(self.uint32)
        self._io.write_u8le(self.uint64)
        self._io.write_bytes(self.magic_sint)
        self._io.write_s2le(self.sint16)
        self._io.write_s4le(self.sint32)
        self._io.write_s8le(self.sint64)
        self._io.write_bytes(self.magic_uint_le)
        self._io.write_u2le(self.uint16le)
        self._io.write_u4le(self.uint32le)
        self._io.write_u8le(self.uint64le)
        self._io.write_bytes(self.magic_sint_le)
        self._io.write_s2le(self.sint16le)
        self._io.write_s4le(self.sint32le)
        self._io.write_s8le(self.sint64le)
        self._io.write_bytes(self.magic_uint_be)
        self._io.write_u2be(self.uint16be)
        self._io.write_u4be(self.uint32be)
        self._io.write_u8be(self.uint64be)
        self._io.write_bytes(self.magic_sint_be)
        self._io.write_s2be(self.sint16be)
        self._io.write_s4be(self.sint32be)
        self._io.write_s8be(self.sint64be)


    def _check(self):
        if len(self.magic1) != 6:
            raise kaitaistruct.ConsistencyError("magic1", 6, len(self.magic1))
        if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, None, "/seq/0")
        if len(self.magic_uint) != 10:
            raise kaitaistruct.ConsistencyError("magic_uint", 10, len(self.magic_uint))
        if not self.magic_uint == b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", self.magic_uint, None, "/seq/3")
        if len(self.magic_sint) != 10:
            raise kaitaistruct.ConsistencyError("magic_sint", 10, len(self.magic_sint))
        if not self.magic_sint == b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", self.magic_sint, None, "/seq/7")
        if len(self.magic_uint_le) != 9:
            raise kaitaistruct.ConsistencyError("magic_uint_le", 9, len(self.magic_uint_le))
        if not self.magic_uint_le == b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", self.magic_uint_le, None, "/seq/11")
        if len(self.magic_sint_le) != 9:
            raise kaitaistruct.ConsistencyError("magic_sint_le", 9, len(self.magic_sint_le))
        if not self.magic_sint_le == b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", self.magic_sint_le, None, "/seq/15")
        if len(self.magic_uint_be) != 9:
            raise kaitaistruct.ConsistencyError("magic_uint_be", 9, len(self.magic_uint_be))
        if not self.magic_uint_be == b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", self.magic_uint_be, None, "/seq/19")
        if len(self.magic_sint_be) != 9:
            raise kaitaistruct.ConsistencyError("magic_sint_be", 9, len(self.magic_sint_be))
        if not self.magic_sint_be == b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", self.magic_sint_be, None, "/seq/23")
        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Integers(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.magic1 = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x31")
        self.uint8 = self._io.read_u1()
        self.sint8 = self._io.read_s1()
        self.magic_uint = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46")
        self.uint16 = self._io.read_u2le()
        self.uint32 = self._io.read_u4le()
        self.uint64 = self._io.read_u8le()
        self.magic_sint = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46")
        self.sint16 = self._io.read_s2le()
        self.sint32 = self._io.read_s4le()
        self.sint64 = self._io.read_s8le()
        self.magic_uint_le = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45")
        self.uint16le = self._io.read_u2le()
        self.uint32le = self._io.read_u4le()
        self.uint64le = self._io.read_u8le()
        self.magic_sint_le = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45")
        self.sint16le = self._io.read_s2le()
        self.sint32le = self._io.read_s4le()
        self.sint64le = self._io.read_s8le()
        self.magic_uint_be = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45")
        self.uint16be = self._io.read_u2be()
        self.uint32be = self._io.read_u4be()
        self.uint64be = self._io.read_u8be()
        self.magic_sint_be = self._io.ensure_fixed_contents(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45")
        self.sint16be = self._io.read_s2be()
        self.sint32be = self._io.read_s4be()
        self.sint64be = self._io.read_s8be()



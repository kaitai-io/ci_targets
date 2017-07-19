# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
import struct


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class FixedStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    class Header(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.magic1 = self._io.ensure_fixed_contents(struct.pack('6b', 80, 65, 67, 75, 45, 49))
            self.uint8 = self._io.read_u1()
            self.sint8 = self._io.read_s1()
            self.magic_uint = self._io.ensure_fixed_contents(struct.pack('10b', 80, 65, 67, 75, 45, 85, 45, 68, 69, 70))
            self.uint16 = self._io.read_u2le()
            self.uint32 = self._io.read_u4le()
            self.uint64 = self._io.read_u8le()
            self.magic_sint = self._io.ensure_fixed_contents(struct.pack('10b', 80, 65, 67, 75, 45, 83, 45, 68, 69, 70))
            self.sint16 = self._io.read_s2le()
            self.sint32 = self._io.read_s4le()
            self.sint64 = self._io.read_s8le()
            self.magic_uint_le = self._io.ensure_fixed_contents(struct.pack('9b', 80, 65, 67, 75, 45, 85, 45, 76, 69))
            self.uint16le = self._io.read_u2le()
            self.uint32le = self._io.read_u4le()
            self.uint64le = self._io.read_u8le()
            self.magic_sint_le = self._io.ensure_fixed_contents(struct.pack('9b', 80, 65, 67, 75, 45, 83, 45, 76, 69))
            self.sint16le = self._io.read_s2le()
            self.sint32le = self._io.read_s4le()
            self.sint64le = self._io.read_s8le()
            self.magic_uint_be = self._io.ensure_fixed_contents(struct.pack('9b', 80, 65, 67, 75, 45, 85, 45, 66, 69))
            self.uint16be = self._io.read_u2be()
            self.uint32be = self._io.read_u4be()
            self.uint64be = self._io.read_u8be()
            self.magic_sint_be = self._io.ensure_fixed_contents(struct.pack('9b', 80, 65, 67, 75, 45, 83, 45, 66, 69))
            self.sint16be = self._io.read_s2be()
            self.sint32be = self._io.read_s4be()
            self.sint64be = self._io.read_s8be()


    @property
    def hdr(self):
        if hasattr(self, '_m_hdr'):
            return self._m_hdr if hasattr(self, '_m_hdr') else None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_hdr = self._root.Header(self._io, self, self._root)
        self._io.seek(_pos)
        return self._m_hdr if hasattr(self, '_m_hdr') else None



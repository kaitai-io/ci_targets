# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class FixedStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(FixedStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_hdr = False
        self.hdr__enabled = True

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.hdr
        if hasattr(self, '_m_hdr'):
            pass
            self._m_hdr._fetch_instances()



    def _write__seq(self, io=None):
        super(FixedStruct, self)._write__seq(io)
        self._should_write_hdr = self.hdr__enabled


    def _check(self):
        if self.hdr__enabled:
            pass
            if self._m_hdr._root != self._root:
                raise kaitaistruct.ConsistencyError(u"hdr", self._m_hdr._root, self._root)
            if self._m_hdr._parent != self:
                raise kaitaistruct.ConsistencyError(u"hdr", self._m_hdr._parent, self)

        self._dirty = False

    class Header(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(FixedStruct.Header, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.magic1 = self._io.read_bytes(6)
            if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, self._io, u"/types/header/seq/0")
            self.uint8 = self._io.read_u1()
            self.sint8 = self._io.read_s1()
            self.magic_uint = self._io.read_bytes(10)
            if not self.magic_uint == b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", self.magic_uint, self._io, u"/types/header/seq/3")
            self.uint16 = self._io.read_u2le()
            self.uint32 = self._io.read_u4le()
            self.uint64 = self._io.read_u8le()
            self.magic_sint = self._io.read_bytes(10)
            if not self.magic_sint == b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", self.magic_sint, self._io, u"/types/header/seq/7")
            self.sint16 = self._io.read_s2le()
            self.sint32 = self._io.read_s4le()
            self.sint64 = self._io.read_s8le()
            self.magic_uint_le = self._io.read_bytes(9)
            if not self.magic_uint_le == b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", self.magic_uint_le, self._io, u"/types/header/seq/11")
            self.uint16le = self._io.read_u2le()
            self.uint32le = self._io.read_u4le()
            self.uint64le = self._io.read_u8le()
            self.magic_sint_le = self._io.read_bytes(9)
            if not self.magic_sint_le == b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", self.magic_sint_le, self._io, u"/types/header/seq/15")
            self.sint16le = self._io.read_s2le()
            self.sint32le = self._io.read_s4le()
            self.sint64le = self._io.read_s8le()
            self.magic_uint_be = self._io.read_bytes(9)
            if not self.magic_uint_be == b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", self.magic_uint_be, self._io, u"/types/header/seq/19")
            self.uint16be = self._io.read_u2be()
            self.uint32be = self._io.read_u4be()
            self.uint64be = self._io.read_u8be()
            self.magic_sint_be = self._io.read_bytes(9)
            if not self.magic_sint_be == b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", self.magic_sint_be, self._io, u"/types/header/seq/23")
            self.sint16be = self._io.read_s2be()
            self.sint32be = self._io.read_s4be()
            self.sint64be = self._io.read_s8be()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(FixedStruct.Header, self)._write__seq(io)
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
                raise kaitaistruct.ConsistencyError(u"magic1", len(self.magic1), 6)
            if not self.magic1 == b"\x50\x41\x43\x4B\x2D\x31":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.magic1, None, u"/types/header/seq/0")
            if len(self.magic_uint) != 10:
                raise kaitaistruct.ConsistencyError(u"magic_uint", len(self.magic_uint), 10)
            if not self.magic_uint == b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", self.magic_uint, None, u"/types/header/seq/3")
            if len(self.magic_sint) != 10:
                raise kaitaistruct.ConsistencyError(u"magic_sint", len(self.magic_sint), 10)
            if not self.magic_sint == b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", self.magic_sint, None, u"/types/header/seq/7")
            if len(self.magic_uint_le) != 9:
                raise kaitaistruct.ConsistencyError(u"magic_uint_le", len(self.magic_uint_le), 9)
            if not self.magic_uint_le == b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", self.magic_uint_le, None, u"/types/header/seq/11")
            if len(self.magic_sint_le) != 9:
                raise kaitaistruct.ConsistencyError(u"magic_sint_le", len(self.magic_sint_le), 9)
            if not self.magic_sint_le == b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", self.magic_sint_le, None, u"/types/header/seq/15")
            if len(self.magic_uint_be) != 9:
                raise kaitaistruct.ConsistencyError(u"magic_uint_be", len(self.magic_uint_be), 9)
            if not self.magic_uint_be == b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", self.magic_uint_be, None, u"/types/header/seq/19")
            if len(self.magic_sint_be) != 9:
                raise kaitaistruct.ConsistencyError(u"magic_sint_be", len(self.magic_sint_be), 9)
            if not self.magic_sint_be == b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45":
                raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", self.magic_sint_be, None, u"/types/header/seq/23")
            self._dirty = False


    @property
    def hdr(self):
        if self._should_write_hdr:
            self._write_hdr()
        if hasattr(self, '_m_hdr'):
            return self._m_hdr

        if not self.hdr__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_hdr = FixedStruct.Header(self._io, self, self._root)
        self._m_hdr._read()
        self._io.seek(_pos)
        return getattr(self, '_m_hdr', None)

    @hdr.setter
    def hdr(self, v):
        self._dirty = True
        self._m_hdr = v

    def _write_hdr(self):
        self._should_write_hdr = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._m_hdr._write__seq(self._io)
        self._io.seek(_pos)



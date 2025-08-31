# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class FixedContents(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.normal = self._io.read_bytes(6)
        if not self.normal == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.normal, self._io, u"/seq/0")
        self.high_bit_8 = self._io.read_bytes(2)
        if not self.high_bit_8 == b"\xFF\xFF":
            raise kaitaistruct.ValidationNotEqualError(b"\xFF\xFF", self.high_bit_8, self._io, u"/seq/1")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(FixedContents, self)._write__seq(io)
        self._io.write_bytes(self.normal)
        self._io.write_bytes(self.high_bit_8)


    def _check(self):
        pass
        if len(self.normal) != 6:
            raise kaitaistruct.ConsistencyError(u"normal", len(self.normal), 6)
        if not self.normal == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self.normal, None, u"/seq/0")
        if len(self.high_bit_8) != 2:
            raise kaitaistruct.ConsistencyError(u"high_bit_8", len(self.high_bit_8), 2)
        if not self.high_bit_8 == b"\xFF\xFF":
            raise kaitaistruct.ValidationNotEqualError(b"\xFF\xFF", self.high_bit_8, None, u"/seq/1")



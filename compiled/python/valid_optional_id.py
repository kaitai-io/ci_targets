# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidOptionalId(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._unnamed0 = self._io.read_bytes(6)
        if not self._unnamed0 == b"\x50\x41\x43\x4B\x2D\x31":
            raise kaitaistruct.ValidationNotEqualError(b"\x50\x41\x43\x4B\x2D\x31", self._unnamed0, self._io, u"/seq/0")
        self._unnamed1 = self._io.read_u1()
        if not self._unnamed1 == 255:
            raise kaitaistruct.ValidationNotEqualError(255, self._unnamed1, self._io, u"/seq/1")
        self._unnamed2 = self._io.read_s1()
        _ = self._unnamed2
        if not _ == -1:
            raise kaitaistruct.ValidationExprError(self._unnamed2, self._io, u"/seq/2")



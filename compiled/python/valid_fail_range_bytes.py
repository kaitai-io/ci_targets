# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeBytes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = self._io.read_bytes(2)
        if not self.foo >= b"\x48\x40":
            raise kaitaistruct.ValidationLessThanError(b"\x48\x40", self.foo, self._io, u"/seq/0")
        if not self.foo <= b"\x4F\x7E":
            raise kaitaistruct.ValidationGreaterThanError(b"\x4F\x7E", self.foo, self._io, u"/seq/0")



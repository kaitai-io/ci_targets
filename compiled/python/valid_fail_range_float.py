# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeFloat(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = self._io.read_f4le()
        if not self.foo >= 0.2:
            raise kaitaistruct.ValidationLessThanError(0.2, self.foo, self._io, u"/seq/0")
        if not self.foo <= 0.4:
            raise kaitaistruct.ValidationGreaterThanError(0.4, self.foo, self._io, u"/seq/0")



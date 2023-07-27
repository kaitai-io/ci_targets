# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = self._io.read_u1()
        if not self.foo >= 5:
            raise kaitaistruct.ValidationLessThanError(5, self.foo, self._io, u"/seq/0")
        if not self.foo <= 10:
            raise kaitaistruct.ValidationGreaterThanError(10, self.foo, self._io, u"/seq/0")



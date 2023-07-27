# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRangeStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = (self._io.read_bytes(2)).decode("ASCII")
        if not self.foo >= u"P":
            raise kaitaistruct.ValidationLessThanError(u"P", self.foo, self._io, u"/seq/0")
        if not self.foo <= u"P1":
            raise kaitaistruct.ValidationGreaterThanError(u"P1", self.foo, self._io, u"/seq/0")



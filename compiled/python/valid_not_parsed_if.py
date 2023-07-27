# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidNotParsedIf(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        if False:
            self.not_parsed = self._io.read_u1()
            if not self.not_parsed == 42:
                raise kaitaistruct.ValidationNotEqualError(42, self.not_parsed, self._io, u"/seq/0")

        if True:
            self.parsed = self._io.read_u1()
            if not self.parsed == 80:
                raise kaitaistruct.ValidationNotEqualError(80, self.parsed, self._io, u"/seq/1")




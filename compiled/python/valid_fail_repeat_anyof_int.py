# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRepeatAnyofInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = []
        i = 0
        while not self._io.is_eof():
            self.foo.append(self._io.read_u1())
            if not  ((self.foo[i] == 0) or (self.foo[i] == 1) or (self.foo[i] == 65)) :
                raise kaitaistruct.ValidationNotAnyOfError(self.foo[i], self._io, u"/seq/0")
            i += 1




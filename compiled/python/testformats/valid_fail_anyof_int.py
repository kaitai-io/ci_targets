# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailAnyofInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = self._io.read_u1()
        if not  ((self.foo == 5) or (self.foo == 6) or (self.foo == 7) or (self.foo == 8) or (self.foo == 10) or (self.foo == 11) or (self.foo == 12) or (self.foo == 47)) :
            raise kaitaistruct.ValidationNotAnyOfError(self.foo, self._io, u"/seq/0")


    def _fetch_instances(self):
        pass



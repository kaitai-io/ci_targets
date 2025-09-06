# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailEqInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ValidFailEqInt, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = self._io.read_u1()
        if not self.foo == 123:
            raise kaitaistruct.ValidationNotEqualError(123, self.foo, self._io, u"/seq/0")


    def _fetch_instances(self):
        pass



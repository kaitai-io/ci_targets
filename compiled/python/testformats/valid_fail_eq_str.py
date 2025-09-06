# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailEqStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ValidFailEqStr, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = (self._io.read_bytes(4)).decode(u"ASCII")
        if not self.foo == u"BACK":
            raise kaitaistruct.ValidationNotEqualError(u"BACK", self.foo, self._io, u"/seq/0")


    def _fetch_instances(self):
        pass



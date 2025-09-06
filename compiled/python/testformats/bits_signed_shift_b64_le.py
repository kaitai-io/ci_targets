# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsSignedShiftB64Le(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(BitsSignedShiftB64Le, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.a = self._io.read_bits_int_le(63)
        self.b = self._io.read_bits_int_le(9)


    def _fetch_instances(self):
        pass



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import imports_circular_a


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsCircularB(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.initial = self._io.read_u1()
        if self.initial == 65:
            pass
            self.back_ref = imports_circular_a.ImportsCircularA(self._io)



    def _fetch_instances(self):
        pass
        if self.initial == 65:
            pass
            self.back_ref._fetch_instances()




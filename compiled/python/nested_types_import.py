# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypesImport(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
        self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
        self.b = NestedTypes3.SubtypeB(self._io, self, self._root)



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import hello_world
import params_def_array_usertype_imported


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsParamsDefArrayUsertypeImported(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.hws = []
        for i in range(2):
            self.hws.append(hello_world.HelloWorld(self._io))

        self.two = params_def_array_usertype_imported.ParamsDefArrayUsertypeImported(self.hws, self._io)



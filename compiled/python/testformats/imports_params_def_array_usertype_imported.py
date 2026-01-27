# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import hello_world
from testformats import params_def_array_usertype_imported


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ImportsParamsDefArrayUsertypeImported(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.hws = []
        for i in range(2):
            self.hws.append(hello_world.HelloWorld(self._io))

        self.two = params_def_array_usertype_imported.ParamsDefArrayUsertypeImported(self.hws, self._io)


    def _fetch_instances(self):
        pass
        for i in range(len(self.hws)):
            pass
            self.hws[i]._fetch_instances()

        self.two._fetch_instances()



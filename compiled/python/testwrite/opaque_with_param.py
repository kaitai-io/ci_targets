# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import params_def


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class OpaqueWithParam(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = params_def.ParamsDef(5, True, self._io)
        self.one._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.one._write__seq(self._io)


    def _check(self):
        self._dirty = False



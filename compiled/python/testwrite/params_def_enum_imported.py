# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import enum_deep
from testwrite import enum_0


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsDefEnumImported(ReadWriteKaitaiStruct):
    def __init__(self, pet_1_param, pet_2_param, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.pet_1_param = pet_1_param
        self.pet_2_param = pet_2_param

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)


    def _check(self):
        self._dirty = False



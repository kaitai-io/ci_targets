# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import enum_deep
from testformats import enum_0


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumImportSeq(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(enum_0.Enum0.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(enum_deep.EnumDeep.Container1.Container2.Animal, self._io.read_u4le())


    def _fetch_instances(self):
        pass



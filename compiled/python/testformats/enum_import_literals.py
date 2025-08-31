# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import enum_0
from testformats import enum_deep


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumImportLiterals(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass

    @property
    def pet_1_eq(self):
        if hasattr(self, '_m_pet_1_eq'):
            return self._m_pet_1_eq

        self._m_pet_1_eq = (enum_0.Enum0.Animal.chicken if True else enum_0.Enum0.Animal.dog) == enum_0.Enum0.Animal.chicken
        return getattr(self, '_m_pet_1_eq', None)

    @property
    def pet_1_to_i(self):
        if hasattr(self, '_m_pet_1_to_i'):
            return self._m_pet_1_to_i

        self._m_pet_1_to_i = int(enum_0.Enum0.Animal.cat)
        return getattr(self, '_m_pet_1_to_i', None)

    @property
    def pet_2(self):
        if hasattr(self, '_m_pet_2'):
            return self._m_pet_2

        self._m_pet_2 = enum_deep.EnumDeep.Container1.Container2.Animal.hare
        return getattr(self, '_m_pet_2', None)



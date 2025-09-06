# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import enum_0
from testwrite import enum_deep


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumImportLiterals(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumImportLiterals, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumImportLiterals, self)._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def pet_1_eq(self):
        if hasattr(self, '_m_pet_1_eq'):
            return self._m_pet_1_eq

        self._m_pet_1_eq = (enum_0.Enum0.Animal.chicken if True else enum_0.Enum0.Animal.dog) == enum_0.Enum0.Animal.chicken
        return getattr(self, '_m_pet_1_eq', None)

    def _invalidate_pet_1_eq(self):
        del self._m_pet_1_eq
    @property
    def pet_1_to_i(self):
        if hasattr(self, '_m_pet_1_to_i'):
            return self._m_pet_1_to_i

        self._m_pet_1_to_i = int(enum_0.Enum0.Animal.cat)
        return getattr(self, '_m_pet_1_to_i', None)

    def _invalidate_pet_1_to_i(self):
        del self._m_pet_1_to_i
    @property
    def pet_2(self):
        if hasattr(self, '_m_pet_2'):
            return self._m_pet_2

        self._m_pet_2 = enum_deep.EnumDeep.Container1.Container2.Animal.hare
        return getattr(self, '_m_pet_2', None)

    def _invalidate_pet_2(self):
        del self._m_pet_2


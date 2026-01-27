# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumOfValueInst(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, self._io.read_u4le())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(int(self.pet_1))
        self._io.write_u4le(int(self.pet_2))


    def _check(self):
        self._dirty = False

    @property
    def pet_3(self):
        if hasattr(self, '_m_pet_3'):
            return self._m_pet_3

        self._m_pet_3 = KaitaiStream.resolve_enum(EnumOfValueInst.Animal, (4 if self.pet_1 == EnumOfValueInst.Animal.cat else 12))
        return getattr(self, '_m_pet_3', None)

    def _invalidate_pet_3(self):
        del self._m_pet_3
    @property
    def pet_4(self):
        if hasattr(self, '_m_pet_4'):
            return self._m_pet_4

        self._m_pet_4 = (EnumOfValueInst.Animal.dog if self.pet_1 == EnumOfValueInst.Animal.cat else EnumOfValueInst.Animal.chicken)
        return getattr(self, '_m_pet_4', None)

    def _invalidate_pet_4(self):
        del self._m_pet_4


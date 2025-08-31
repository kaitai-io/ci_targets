# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumDeepLiterals(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumDeepLiterals.Container1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumDeepLiterals.Container1.Container2.Animal, self._io.read_u4le())


    def _fetch_instances(self):
        pass

    class Container1(KaitaiStruct):

        class Animal(IntEnum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass

        class Container2(KaitaiStruct):

            class Animal(IntEnum):
                canary = 4
                turtle = 7
                hare = 12
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                pass


            def _fetch_instances(self):
                pass



    @property
    def is_pet_1_ok(self):
        if hasattr(self, '_m_is_pet_1_ok'):
            return self._m_is_pet_1_ok

        self._m_is_pet_1_ok = self.pet_1 == EnumDeepLiterals.Container1.Animal.cat
        return getattr(self, '_m_is_pet_1_ok', None)

    @property
    def is_pet_2_ok(self):
        if hasattr(self, '_m_is_pet_2_ok'):
            return self._m_is_pet_2_ok

        self._m_is_pet_2_ok = self.pet_2 == EnumDeepLiterals.Container1.Container2.Animal.hare
        return getattr(self, '_m_is_pet_2_ok', None)



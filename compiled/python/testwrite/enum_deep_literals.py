# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumDeepLiterals(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumDeepLiterals, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumDeepLiterals.Container1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumDeepLiterals.Container1.Container2.Animal, self._io.read_u4le())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumDeepLiterals, self)._write__seq(io)
        self._io.write_u4le(int(self.pet_1))
        self._io.write_u4le(int(self.pet_2))


    def _check(self):
        self._dirty = False

    class Container1(ReadWriteKaitaiStruct):

        class Animal(IntEnum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io=None, _parent=None, _root=None):
            super(EnumDeepLiterals.Container1, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(EnumDeepLiterals.Container1, self)._write__seq(io)


        def _check(self):
            self._dirty = False

        class Container2(ReadWriteKaitaiStruct):

            class Animal(IntEnum):
                canary = 4
                turtle = 7
                hare = 12
            def __init__(self, _io=None, _parent=None, _root=None):
                super(EnumDeepLiterals.Container1.Container2, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(EnumDeepLiterals.Container1.Container2, self)._write__seq(io)


            def _check(self):
                self._dirty = False



    @property
    def is_pet_1_ok(self):
        if hasattr(self, '_m_is_pet_1_ok'):
            return self._m_is_pet_1_ok

        self._m_is_pet_1_ok = self.pet_1 == EnumDeepLiterals.Container1.Animal.cat
        return getattr(self, '_m_is_pet_1_ok', None)

    def _invalidate_is_pet_1_ok(self):
        del self._m_is_pet_1_ok
    @property
    def is_pet_2_ok(self):
        if hasattr(self, '_m_is_pet_2_ok'):
            return self._m_is_pet_2_ok

        self._m_is_pet_2_ok = self.pet_2 == EnumDeepLiterals.Container1.Container2.Animal.hare
        return getattr(self, '_m_is_pet_2_ok', None)

    def _invalidate_is_pet_2_ok(self):
        del self._m_is_pet_2_ok


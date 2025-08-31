# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumDeep(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumDeep.Container1.Animal, self._io.read_u4le())
        self.pet_2 = KaitaiStream.resolve_enum(EnumDeep.Container1.Container2.Animal, self._io.read_u4le())


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumDeep, self)._write__seq(io)
        self._io.write_u4le(int(self.pet_1))
        self._io.write_u4le(int(self.pet_2))


    def _check(self):
        pass

    class Container1(ReadWriteKaitaiStruct):

        class Animal(IntEnum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(EnumDeep.Container1, self)._write__seq(io)


        def _check(self):
            pass

        class Container2(ReadWriteKaitaiStruct):

            class Animal(IntEnum):
                canary = 4
                turtle = 7
                hare = 12
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(EnumDeep.Container1.Container2, self)._write__seq(io)


            def _check(self):
                pass





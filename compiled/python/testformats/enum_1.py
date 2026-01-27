# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class Enum1(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.main = Enum1.MainObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()

    class MainObj(KaitaiStruct):

        class Animal(IntEnum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.submain = Enum1.MainObj.SubmainObj(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.submain._fetch_instances()

        class SubmainObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.pet_1 = KaitaiStream.resolve_enum(Enum1.MainObj.Animal, self._io.read_u4le())
                self.pet_2 = KaitaiStream.resolve_enum(Enum1.MainObj.Animal, self._io.read_u4le())


            def _fetch_instances(self):
                pass





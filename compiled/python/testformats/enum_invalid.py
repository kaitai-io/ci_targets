# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumInvalid(KaitaiStruct):

    class Animal(IntEnum):
        dog = 102
        cat = 124
    def __init__(self, _io, _parent=None, _root=None):
        super(EnumInvalid, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumInvalid.Animal, self._io.read_u1())
        self.pet_2 = KaitaiStream.resolve_enum(EnumInvalid.Animal, self._io.read_u1())


    def _fetch_instances(self):
        pass



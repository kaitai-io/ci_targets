# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class BitsEnum(KaitaiStruct):

    class Animal(Enum):
        cat = 0
        dog = 1
        horse = 4
        platypus = 5
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(4))
        self.two = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(8))
        self.three = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(1))



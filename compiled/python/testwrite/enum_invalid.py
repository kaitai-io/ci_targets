# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumInvalid(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 102
        cat = 124
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EnumInvalid, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pet_1 = KaitaiStream.resolve_enum(EnumInvalid.Animal, self._io.read_u1())
        self.pet_2 = KaitaiStream.resolve_enum(EnumInvalid.Animal, self._io.read_u1())
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EnumInvalid, self)._write__seq(io)
        self._io.write_u1(int(self.pet_1))
        self._io.write_u1(int(self.pet_2))


    def _check(self):
        self._dirty = False



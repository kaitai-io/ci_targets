# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class BitsEnum(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        cat = 0
        dog = 1
        horse = 4
        platypus = 5
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(4))
        self.two = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(8))
        self.three = KaitaiStream.resolve_enum(BitsEnum.Animal, self._io.read_bits_int_be(1))
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bits_int_be(4, int(self.one))
        self._io.write_bits_int_be(8, int(self.two))
        self._io.write_bits_int_be(1, int(self.three))


    def _check(self):
        self._dirty = False



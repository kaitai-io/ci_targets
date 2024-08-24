# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailInEnum(KaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        chicken = 12
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = KaitaiStream.resolve_enum(ValidFailInEnum.Animal, self._io.read_u4le())
        if not isinstance(self.foo, ValidFailInEnum.Animal):
            raise kaitaistruct.ValidationNotInEnumError(self.foo, self._io, u"/seq/0")



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailInEnum(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        chicken = 12
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidFailInEnum, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = KaitaiStream.resolve_enum(ValidFailInEnum.Animal, self._io.read_u4le())
        if not isinstance(self.foo, ValidFailInEnum.Animal):
            raise kaitaistruct.ValidationNotInEnumError(self.foo, self._io, u"/seq/0")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailInEnum, self)._write__seq(io)
        self._io.write_u4le(int(self.foo))


    def _check(self):
        if not isinstance(self.foo, ValidFailInEnum.Animal):
            raise kaitaistruct.ValidationNotInEnumError(self.foo, None, u"/seq/0")
        self._dirty = False



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsEnum(KaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.one = KaitaiStream.resolve_enum(ParamsEnum.Animal, self._io.read_u1())
        self.invoke_with_param = ParamsEnum.WithParam(self.one, self._io, self, self._root)

    class WithParam(KaitaiStruct):
        def __init__(self, enumerated_one, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.enumerated_one = enumerated_one
            self._read()

        def _read(self):
            pass

        @property
        def is_cat(self):
            if hasattr(self, '_m_is_cat'):
                return self._m_is_cat

            self._m_is_cat = self.enumerated_one == ParamsEnum.Animal.cat
            return getattr(self, '_m_is_cat', None)




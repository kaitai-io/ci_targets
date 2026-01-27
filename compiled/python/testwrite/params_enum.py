# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsEnum(ReadWriteKaitaiStruct):

    class Animal(IntEnum):
        dog = 4
        cat = 7
        chicken = 12
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = KaitaiStream.resolve_enum(ParamsEnum.Animal, self._io.read_u1())
        self.invoke_with_param = ParamsEnum.WithParam(self.one, self._io, self, self._root)
        self.invoke_with_param._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.invoke_with_param._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(int(self.one))
        self.invoke_with_param._write__seq(self._io)


    def _check(self):
        if self.invoke_with_param._root != self._root:
            raise kaitaistruct.ConsistencyError("invoke_with_param", self._root, self.invoke_with_param._root)
        if self.invoke_with_param._parent != self:
            raise kaitaistruct.ConsistencyError("invoke_with_param", self, self.invoke_with_param._parent)
        if self.invoke_with_param.enumerated_one != self.one:
            raise kaitaistruct.ConsistencyError("invoke_with_param", self.one, self.invoke_with_param.enumerated_one)
        self._dirty = False

    class WithParam(ReadWriteKaitaiStruct):
        def __init__(self, enumerated_one, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.enumerated_one = enumerated_one

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)


        def _check(self):
            self._dirty = False

        @property
        def is_cat(self):
            if hasattr(self, '_m_is_cat'):
                return self._m_is_cat

            self._m_is_cat = self.enumerated_one == ParamsEnum.Animal.cat
            return getattr(self, '_m_is_cat', None)

        def _invalidate_is_cat(self):
            del self._m_is_cat



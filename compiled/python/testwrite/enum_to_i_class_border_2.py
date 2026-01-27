# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import enum_to_i_class_border_1


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EnumToIClassBorder2(ReadWriteKaitaiStruct):
    def __init__(self, parent, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.parent = parent

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
    def is_dog(self):
        if hasattr(self, '_m_is_dog'):
            return self._m_is_dog

        self._m_is_dog = int(self.parent.some_dog) == 4
        return getattr(self, '_m_is_dog', None)

    def _invalidate_is_dog(self):
        del self._m_is_dog


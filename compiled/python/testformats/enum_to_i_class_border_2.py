# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import enum_to_i_class_border_1


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EnumToIClassBorder2(KaitaiStruct):
    def __init__(self, parent, _io, _parent=None, _root=None):
        super(EnumToIClassBorder2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.parent = parent
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass

    @property
    def is_dog(self):
        if hasattr(self, '_m_is_dog'):
            return self._m_is_dog

        self._m_is_dog = int(self.parent.some_dog) == 4
        return getattr(self, '_m_is_dog', None)



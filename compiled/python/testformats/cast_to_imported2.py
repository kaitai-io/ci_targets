# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CastToImported2(KaitaiStruct):
    def __init__(self, hw_param, _io, _parent=None, _root=None):
        super(CastToImported2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.hw_param = hw_param
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass

    @property
    def hw(self):
        if hasattr(self, '_m_hw'):
            return self._m_hw

        self._m_hw = self.hw_param
        return getattr(self, '_m_hw', None)



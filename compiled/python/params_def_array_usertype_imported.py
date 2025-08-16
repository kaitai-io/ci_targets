# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsDefArrayUsertypeImported(KaitaiStruct):
    def __init__(self, hws_param, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self.hws_param = hws_param
        self._read()

    def _read(self):
        pass

    @property
    def hw0_one(self):
        if hasattr(self, '_m_hw0_one'):
            return self._m_hw0_one

        self._m_hw0_one = self.hws_param[0].one
        return getattr(self, '_m_hw0_one', None)

    @property
    def hw1_one(self):
        if hasattr(self, '_m_hw1_one'):
            return self._m_hw1_one

        self._m_hw1_one = self.hws_param[1].one
        return getattr(self, '_m_hw1_one', None)



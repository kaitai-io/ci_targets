# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsDefArrayUsertypeImported(ReadWriteKaitaiStruct):
    def __init__(self, hws_param, _io=None, _parent=None, _root=None):
        super(ParamsDefArrayUsertypeImported, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.hws_param = hws_param

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ParamsDefArrayUsertypeImported, self)._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def hw0_one(self):
        if hasattr(self, '_m_hw0_one'):
            return self._m_hw0_one

        self._m_hw0_one = self.hws_param[0].one
        return getattr(self, '_m_hw0_one', None)

    def _invalidate_hw0_one(self):
        del self._m_hw0_one
    @property
    def hw1_one(self):
        if hasattr(self, '_m_hw1_one'):
            return self._m_hw1_one

        self._m_hw1_one = self.hws_param[1].one
        return getattr(self, '_m_hw1_one', None)

    def _invalidate_hw1_one(self):
        del self._m_hw1_one


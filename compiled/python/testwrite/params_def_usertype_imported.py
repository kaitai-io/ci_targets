# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsDefUsertypeImported(ReadWriteKaitaiStruct):
    def __init__(self, hw_param, _io=None, _parent=None, _root=None):
        super(ParamsDefUsertypeImported, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self.hw_param = hw_param

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ParamsDefUsertypeImported, self)._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def hw_one(self):
        if hasattr(self, '_m_hw_one'):
            return self._m_hw_one

        self._m_hw_one = self.hw_param.one
        return getattr(self, '_m_hw_one', None)

    def _invalidate_hw_one(self):
        del self._m_hw_one


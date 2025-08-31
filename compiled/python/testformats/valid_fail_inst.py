# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        if self.inst >= 0:
            pass
            self.a = self._io.read_u1()



    def _fetch_instances(self):
        pass
        if self.inst >= 0:
            pass

        _ = self.inst

    @property
    def inst(self):
        if hasattr(self, '_m_inst'):
            return self._m_inst

        _pos = self._io.pos()
        self._io.seek(5)
        self._m_inst = self._io.read_u1()
        if not self._m_inst == 80:
            raise kaitaistruct.ValidationNotEqualError(80, self._m_inst, self._io, u"/instances/inst")
        self._io.seek(_pos)
        return getattr(self, '_m_inst', None)



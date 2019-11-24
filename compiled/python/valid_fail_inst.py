# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        if self.inst >= 0:
            self.a = self._io.read_u1()


    @property
    def inst(self):
        if hasattr(self, '_m_inst'):
            return self._m_inst if hasattr(self, '_m_inst') else None

        _pos = self._io.pos()
        self._io.seek(5)
        self._m_inst = self._io.read_u1()
        self._io.seek(_pos)
        if not self.inst == 80:
            raise kaitaistruct.ValidationNotEqualError(80, self.inst, self._io, u"/instances/inst")
        return self._m_inst if hasattr(self, '_m_inst') else None



# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRepeatInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        if len(self.inst) == 0:
            self.a = self._io.read_bytes(0)


    @property
    def inst(self):
        if hasattr(self, '_m_inst'):
            return self._m_inst

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_inst = []
        i = 0
        while not self._io.is_eof():
            self._m_inst.append(self._io.read_u4be())
            if not self._m_inst[i] == 305419896:
                raise kaitaistruct.ValidationNotEqualError(305419896, self._m_inst[i], self._io, u"/instances/inst")
            i += 1

        self._io.seek(_pos)
        return getattr(self, '_m_inst', None)



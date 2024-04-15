# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IfValues(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.codes = []
        for i in range(3):
            self.codes.append(IfValues.Code(self._io, self, self._root))


    class Code(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.opcode = self._io.read_u1()

        @property
        def half_opcode(self):
            if hasattr(self, '_m_half_opcode'):
                return self._m_half_opcode

            if self.opcode % 2 == 0:
                self._m_half_opcode = self.opcode // 2

            return getattr(self, '_m_half_opcode', None)




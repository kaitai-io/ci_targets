# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IfValues(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.codes = []
        for i in range(3):
            self.codes.append(IfValues.Code(self._io, self, self._root))



    def _fetch_instances(self):
        pass
        for i in range(len(self.codes)):
            pass
            self.codes[i]._fetch_instances()


    class Code(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.opcode = self._io.read_u1()


        def _fetch_instances(self):
            pass

        @property
        def half_opcode(self):
            if hasattr(self, '_m_half_opcode'):
                return self._m_half_opcode

            if self.opcode % 2 == 0:
                pass
                self._m_half_opcode = self.opcode // 2

            return getattr(self, '_m_half_opcode', None)




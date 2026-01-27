# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilTermBytes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.records1 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(170, False, True, True)
            self.records1.append(_)
            if len(_) == 0:
                break
            i += 1
        self.records2 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(170, True, True, True)
            self.records2.append(_)
            if _ != b"\xAA":
                break
            i += 1
        self.records3 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(85, False, False, True)
            self.records3.append(_)
            if _ == self.records1[-1]:
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.records1)):
            pass

        for i in range(len(self.records2)):
            pass

        for i in range(len(self.records3)):
            pass




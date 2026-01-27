# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilTermStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_records1 = []
        self.records1 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(170, False, True, True)
            self._raw_records1.append(_buf)
            _io__raw_records1 = KaitaiStream(BytesIO(self._raw_records1[-1]))
            _ = RepeatUntilTermStruct.BytesWrapper(_io__raw_records1, self, self._root)
            self.records1.append(_)
            if len(_.value) == 0:
                break
            i += 1
        self._raw_records2 = []
        self.records2 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(170, True, True, True)
            self._raw_records2.append(_buf)
            _io__raw_records2 = KaitaiStream(BytesIO(self._raw_records2[-1]))
            _ = RepeatUntilTermStruct.BytesWrapper(_io__raw_records2, self, self._root)
            self.records2.append(_)
            if _.value != b"\xAA":
                break
            i += 1
        self._raw_records3 = []
        self.records3 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(85, False, False, True)
            self._raw_records3.append(_buf)
            _io__raw_records3 = KaitaiStream(BytesIO(self._raw_records3[-1]))
            _ = RepeatUntilTermStruct.BytesWrapper(_io__raw_records3, self, self._root)
            self.records3.append(_)
            if _.value == self.records1[-1].value:
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.records1)):
            pass
            self.records1[i]._fetch_instances()

        for i in range(len(self.records2)):
            pass
            self.records2[i]._fetch_instances()

        for i in range(len(self.records3)):
            pass
            self.records3[i]._fetch_instances()


    class BytesWrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass




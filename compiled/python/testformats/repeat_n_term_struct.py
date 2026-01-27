# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatNTermStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_records1 = []
        self.records1 = []
        for i in range(2):
            self._raw_records1.append(self._io.read_bytes_term(170, False, True, True))
            _io__raw_records1 = KaitaiStream(BytesIO(self._raw_records1[i]))
            self.records1.append(RepeatNTermStruct.BytesWrapper(_io__raw_records1, self, self._root))

        self._raw_records2 = []
        self.records2 = []
        for i in range(2):
            self._raw_records2.append(self._io.read_bytes_term(170, True, True, True))
            _io__raw_records2 = KaitaiStream(BytesIO(self._raw_records2[i]))
            self.records2.append(RepeatNTermStruct.BytesWrapper(_io__raw_records2, self, self._root))

        self._raw_records3 = []
        self.records3 = []
        for i in range(2):
            self._raw_records3.append(self._io.read_bytes_term(85, False, False, True))
            _io__raw_records3 = KaitaiStream(BytesIO(self._raw_records3[i]))
            self.records3.append(RepeatNTermStruct.BytesWrapper(_io__raw_records3, self, self._root))



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




# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosTermStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(RepeatEosTermStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_records = []
        self.records = []
        i = 0
        while not self._io.is_eof():
            self._raw_records.append(self._io.read_bytes_term(178, True, True, True))
            _io__raw_records = KaitaiStream(BytesIO(self._raw_records[-1]))
            self.records.append(RepeatEosTermStruct.BytesWrapper(_io__raw_records, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass
            self.records[i]._fetch_instances()


    class BytesWrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(RepeatEosTermStruct.BytesWrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass




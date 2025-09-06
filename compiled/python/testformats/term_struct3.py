# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStruct3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(TermStruct3, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_s1 = self._io.read_bytes_term(124, False, False, True)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = TermStruct3.BytesWrapper(_io__raw_s1, self, self._root)
        self._raw_s2 = self._io.read_bytes_term(64, False, False, True)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = TermStruct3.BytesWrapper(_io__raw_s2, self, self._root)
        self._raw_s3 = self._io.read_bytes_term(64, False, True, True)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = TermStruct3.BytesWrapper(_io__raw_s3, self, self._root)


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()

    class BytesWrapper(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(TermStruct3.BytesWrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass




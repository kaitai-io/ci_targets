# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TermStrzUtf16V4(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(TermStrzUtf16V4, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_s1 = self._io.read_bytes(6)
        _io__raw_s1 = KaitaiStream(BytesIO(self._raw_s1))
        self.s1 = TermStrzUtf16V4.S1Type(_io__raw_s1, self, self._root)
        self.skip_term1 = self._io.read_bytes(2)
        self._raw_s2 = self._io.read_bytes(6)
        _io__raw_s2 = KaitaiStream(BytesIO(self._raw_s2))
        self.s2 = TermStrzUtf16V4.S2Type(_io__raw_s2, self, self._root)
        self.skip_term2 = self._io.read_bytes(2)
        self._raw_s3 = self._io.read_bytes(6)
        _io__raw_s3 = KaitaiStream(BytesIO(self._raw_s3))
        self.s3 = TermStrzUtf16V4.S3Type(_io__raw_s3, self, self._root)


    def _fetch_instances(self):
        pass
        self.s1._fetch_instances()
        self.s2._fetch_instances()
        self.s3._fetch_instances()

    class S1Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(TermStrzUtf16V4.S1Type, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (self._io.read_bytes_term_multi(b"\x00\x00", False, True, False)).decode(u"UTF-16LE")


        def _fetch_instances(self):
            pass


    class S2Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(TermStrzUtf16V4.S2Type, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (self._io.read_bytes_term_multi(b"\x00\x00", False, False, False)).decode(u"UTF-16LE")


        def _fetch_instances(self):
            pass


    class S3Type(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(TermStrzUtf16V4.S3Type, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (self._io.read_bytes_term_multi(b"\x00\x00", True, True, False)).decode(u"UTF-16LE")


        def _fetch_instances(self):
            pass




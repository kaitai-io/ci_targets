# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class OpaqueExternalType02Child(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode(u"UTF-8")
        self.s2 = (self._io.read_bytes_term(124, False, False, True)).decode(u"UTF-8")
        self.s3 = OpaqueExternalType02Child.OpaqueExternalType02ChildChild(self._io, self, self._root)

    class OpaqueExternalType02ChildChild(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            if self._root.some_method:
                self.s3 = (self._io.read_bytes_term(64, True, True, True)).decode(u"UTF-8")



    @property
    def some_method(self):
        if hasattr(self, '_m_some_method'):
            return self._m_some_method if hasattr(self, '_m_some_method') else None

        self._m_some_method = True
        return self._m_some_method if hasattr(self, '_m_some_method') else None



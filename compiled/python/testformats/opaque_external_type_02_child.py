# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class OpaqueExternalType02Child(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode("UTF-8")
        self.s2 = (self._io.read_bytes_term(124, False, False, True)).decode("UTF-8")
        self.s3 = OpaqueExternalType02Child.OpaqueExternalType02ChildChild(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.s3._fetch_instances()

    class OpaqueExternalType02ChildChild(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self._root.some_method:
                pass
                self.s3 = (self._io.read_bytes_term(64, True, True, True)).decode("UTF-8")



        def _fetch_instances(self):
            pass
            if self._root.some_method:
                pass



    @property
    def some_method(self):
        if hasattr(self, '_m_some_method'):
            return self._m_some_method

        self._m_some_method = True
        return getattr(self, '_m_some_method', None)



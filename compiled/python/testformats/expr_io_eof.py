# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprIoEof(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_substream1 = self._io.read_bytes(4)
        _io__raw_substream1 = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = ExprIoEof.OneOrTwo(_io__raw_substream1, self, self._root)
        self._raw_substream2 = self._io.read_bytes(8)
        _io__raw_substream2 = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = ExprIoEof.OneOrTwo(_io__raw_substream2, self, self._root)


    def _fetch_instances(self):
        pass
        self.substream1._fetch_instances()
        self.substream2._fetch_instances()

    class OneOrTwo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.one = self._io.read_u4le()
            if (not (self._io.is_eof())):
                pass
                self.two = self._io.read_u4le()



        def _fetch_instances(self):
            pass
            if (not (self._io.is_eof())):
                pass


        @property
        def reflect_eof(self):
            if hasattr(self, '_m_reflect_eof'):
                return self._m_reflect_eof

            self._m_reflect_eof = self._io.is_eof()
            return getattr(self, '_m_reflect_eof', None)




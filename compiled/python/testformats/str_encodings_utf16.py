# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEncodingsUtf16(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len_be = self._io.read_u4le()
        _io_be_bom_removed = self._io.substream(self.len_be)
        self.be_bom_removed = StrEncodingsUtf16.StrBeBomRemoved(_io_be_bom_removed, self, self._root)
        self.len_le = self._io.read_u4le()
        _io_le_bom_removed = self._io.substream(self.len_le)
        self.le_bom_removed = StrEncodingsUtf16.StrLeBomRemoved(_io_le_bom_removed, self, self._root)


    def _fetch_instances(self):
        pass
        self.be_bom_removed._fetch_instances()
        self.le_bom_removed._fetch_instances()

    class StrBeBomRemoved(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.bom = self._io.read_u2be()
            self.str = (self._io.read_bytes_full()).decode("UTF-16BE")


        def _fetch_instances(self):
            pass


    class StrLeBomRemoved(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.bom = self._io.read_u2le()
            self.str = (self._io.read_bytes_full()).decode("UTF-16LE")


        def _fetch_instances(self):
            pass




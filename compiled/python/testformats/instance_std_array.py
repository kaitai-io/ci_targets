# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class InstanceStdArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.ofs = self._io.read_u4le()
        self.entry_size = self._io.read_u4le()
        self.qty_entries = self._io.read_u4le()


    def _fetch_instances(self):
        pass
        _ = self.entries
        if hasattr(self, '_m_entries'):
            pass
            for i in range(len(self._m_entries)):
                pass



    @property
    def entries(self):
        if hasattr(self, '_m_entries'):
            return self._m_entries

        _pos = self._io.pos()
        self._io.seek(self.ofs)
        self._m_entries = []
        for i in range(self.qty_entries):
            self._m_entries.append(self._io.read_bytes(self.entry_size))

        self._io.seek(_pos)
        return getattr(self, '_m_entries', None)



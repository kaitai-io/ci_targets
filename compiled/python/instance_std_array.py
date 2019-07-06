# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceStdArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ofs = self._io.read_u4le()
        self.entry_size = self._io.read_u4le()
        self.qty_entries = self._io.read_u4le()

    @property
    def entries(self):
        if hasattr(self, '_m_entries'):
            return self._m_entries if hasattr(self, '_m_entries') else None

        _pos = self._io.pos()
        self._io.seek(self.ofs)
        self._m_entries = [None] * (self.qty_entries)
        for i in range(self.qty_entries):
            self._m_entries[i] = self._io.read_bytes(self.entry_size)

        self._io.seek(_pos)
        return self._m_entries if hasattr(self, '_m_entries') else None



from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class InstanceStdArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
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



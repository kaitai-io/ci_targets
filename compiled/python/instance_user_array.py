# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceUserArray(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ofs = self._io.read_u4le()
        self.entry_size = self._io.read_u4le()
        self.qty_entries = self._io.read_u4le()

    class Entry(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.word1 = self._io.read_u2le()
            self.word2 = self._io.read_u2le()


    @property
    def user_entries(self):
        if hasattr(self, '_m_user_entries'):
            return self._m_user_entries

        if self.ofs > 0:
            _pos = self._io.pos()
            self._io.seek(self.ofs)
            self._raw__m_user_entries = []
            self._m_user_entries = []
            for i in range(self.qty_entries):
                self._raw__m_user_entries.append(self._io.read_bytes(self.entry_size))
                _io__raw__m_user_entries = KaitaiStream(BytesIO(self._raw__m_user_entries[i]))
                self._m_user_entries.append(InstanceUserArray.Entry(_io__raw__m_user_entries, self, self._root))

            self._io.seek(_pos)

        return getattr(self, '_m_user_entries', None)



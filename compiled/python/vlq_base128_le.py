from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class VlqBase128Le(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.groups = []
        while True:
            _ = self._root.Group(self._io, self, self._root)
            self.groups.append(_)
            if not _.has_next:
                break

    class Group(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.b = self._io.read_u1()

        @property
        def has_next(self):
            if hasattr(self, '_m_has_next'):
                return self._m_has_next if hasattr(self, '_m_has_next') else None

            self._m_has_next = (self.b & 128) != 0
            return self._m_has_next if hasattr(self, '_m_has_next') else None

        @property
        def value(self):
            if hasattr(self, '_m_value'):
                return self._m_value if hasattr(self, '_m_value') else None

            self._m_value = (self.b & 127)
            return self._m_value if hasattr(self, '_m_value') else None


    @property
    def len(self):
        if hasattr(self, '_m_len'):
            return self._m_len if hasattr(self, '_m_len') else None

        self._m_len = len(self.groups)
        return self._m_len if hasattr(self, '_m_len') else None

    @property
    def value(self):
        if hasattr(self, '_m_value'):
            return self._m_value if hasattr(self, '_m_value') else None

        self._m_value = (((((((self.groups[0].value + ((self.groups[1].value << 7) if self.len >= 2 else 0)) + ((self.groups[2].value << 14) if self.len >= 3 else 0)) + ((self.groups[3].value << 21) if self.len >= 4 else 0)) + ((self.groups[4].value << 28) if self.len >= 5 else 0)) + ((self.groups[5].value << 35) if self.len >= 6 else 0)) + ((self.groups[6].value << 42) if self.len >= 7 else 0)) + ((self.groups[7].value << 49) if self.len >= 8 else 0))
        return self._m_value if hasattr(self, '_m_value') else None



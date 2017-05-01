from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class TypeTernary(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        if not self.is_hack:
            self._raw_dif_wo_hack = self._io.read_bytes(1)
            io = KaitaiStream(BytesIO(self._raw_dif_wo_hack))
            self.dif_wo_hack = self._root.Dummy(io, self, self._root)

        self._raw__raw_dif_with_hack = self._io.read_bytes(1)
        self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
        io = KaitaiStream(BytesIO(self._raw_dif_with_hack))
        self.dif_with_hack = self._root.Dummy(io, self, self._root)

    class Dummy(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.value = self._io.read_u1()


    @property
    def is_hack(self):
        if hasattr(self, '_m_is_hack'):
            return self._m_is_hack if hasattr(self, '_m_is_hack') else None

        self._m_is_hack = True
        return self._m_is_hack if hasattr(self, '_m_is_hack') else None

    @property
    def dif(self):
        if hasattr(self, '_m_dif'):
            return self._m_dif if hasattr(self, '_m_dif') else None

        self._m_dif = (self.dif_wo_hack if not self.is_hack else self.dif_with_hack)
        return self._m_dif if hasattr(self, '_m_dif') else None

    @property
    def dif_value(self):
        if hasattr(self, '_m_dif_value'):
            return self._m_dif_value if hasattr(self, '_m_dif_value') else None

        self._m_dif_value = self.dif.value
        return self._m_dif_value if hasattr(self, '_m_dif_value') else None



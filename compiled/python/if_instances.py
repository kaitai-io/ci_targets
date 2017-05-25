from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class IfInstances(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def never_happens(self):
        if hasattr(self, '_m_never_happens'):
            return self._m_never_happens if hasattr(self, '_m_never_happens') else None

        if False:
            _pos = self._io.pos()
            self._io.seek(100500)
            self._m_never_happens = self._io.read_u1()
            self._io.seek(_pos)

        return self._m_never_happens if hasattr(self, '_m_never_happens') else None



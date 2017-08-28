# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

from hello_world import HelloWorld
class CastToImported(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.one = HelloWorld(self._io)

    @property
    def one_casted(self):
        if hasattr(self, '_m_one_casted'):
            return self._m_one_casted if hasattr(self, '_m_one_casted') else None

        self._m_one_casted = self.one
        return self._m_one_casted if hasattr(self, '_m_one_casted') else None



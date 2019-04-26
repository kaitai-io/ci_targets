# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprSizeofType0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.a = self._io.read_u1()
            self.b = self._io.read_u4le()
            self.c = self._io.read_bytes(2)


    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None

        self._m_sizeof_block = 7
        return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None



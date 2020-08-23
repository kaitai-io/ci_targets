# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprSizeofType1(KaitaiStruct):
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
            self.d = ExprSizeofType1.Block.Subblock(self._io, self, self._root)

        class Subblock(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.a = self._io.read_bytes(4)



    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None

        self._m_sizeof_block = 11
        return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None

    @property
    def sizeof_subblock(self):
        if hasattr(self, '_m_sizeof_subblock'):
            return self._m_sizeof_subblock if hasattr(self, '_m_sizeof_subblock') else None

        self._m_sizeof_subblock = 4
        return self._m_sizeof_subblock if hasattr(self, '_m_sizeof_subblock') else None



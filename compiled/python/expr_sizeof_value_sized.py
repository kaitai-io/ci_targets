# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprSizeofValueSized(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_block1 = self._io.read_bytes(12)
        _io__raw_block1 = KaitaiStream(BytesIO(self._raw_block1))
        self.block1 = self._root.Block(_io__raw_block1, self, self._root)
        self.more = self._io.read_u2le()

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
    def self_sizeof(self):
        if hasattr(self, '_m_self_sizeof'):
            return self._m_self_sizeof if hasattr(self, '_m_self_sizeof') else None

        self._m_self_sizeof = 14
        return self._m_self_sizeof if hasattr(self, '_m_self_sizeof') else None

    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None

        self._m_sizeof_block = 12
        return self._m_sizeof_block if hasattr(self, '_m_sizeof_block') else None

    @property
    def sizeof_block_b(self):
        if hasattr(self, '_m_sizeof_block_b'):
            return self._m_sizeof_block_b if hasattr(self, '_m_sizeof_block_b') else None

        self._m_sizeof_block_b = 4
        return self._m_sizeof_block_b if hasattr(self, '_m_sizeof_block_b') else None

    @property
    def sizeof_block_a(self):
        if hasattr(self, '_m_sizeof_block_a'):
            return self._m_sizeof_block_a if hasattr(self, '_m_sizeof_block_a') else None

        self._m_sizeof_block_a = 1
        return self._m_sizeof_block_a if hasattr(self, '_m_sizeof_block_a') else None

    @property
    def sizeof_block_c(self):
        if hasattr(self, '_m_sizeof_block_c'):
            return self._m_sizeof_block_c if hasattr(self, '_m_sizeof_block_c') else None

        self._m_sizeof_block_c = 2
        return self._m_sizeof_block_c if hasattr(self, '_m_sizeof_block_c') else None



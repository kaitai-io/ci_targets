# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprSizeofValue0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.block1 = ExprSizeofValue0.Block(self._io, self, self._root)
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
            return self._m_self_sizeof

        self._m_self_sizeof = 9
        return getattr(self, '_m_self_sizeof', None)

    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block

        self._m_sizeof_block = 7
        return getattr(self, '_m_sizeof_block', None)

    @property
    def sizeof_block_b(self):
        if hasattr(self, '_m_sizeof_block_b'):
            return self._m_sizeof_block_b

        self._m_sizeof_block_b = 4
        return getattr(self, '_m_sizeof_block_b', None)

    @property
    def sizeof_block_a(self):
        if hasattr(self, '_m_sizeof_block_a'):
            return self._m_sizeof_block_a

        self._m_sizeof_block_a = 1
        return getattr(self, '_m_sizeof_block_a', None)

    @property
    def sizeof_block_c(self):
        if hasattr(self, '_m_sizeof_block_c'):
            return self._m_sizeof_block_c

        self._m_sizeof_block_c = 2
        return getattr(self, '_m_sizeof_block_c', None)



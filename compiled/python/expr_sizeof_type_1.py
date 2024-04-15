# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

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
            self._root = _root
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
                self._root = _root
                self._read()

            def _read(self):
                self.a = self._io.read_bytes(4)



    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block

        self._m_sizeof_block = 11
        return getattr(self, '_m_sizeof_block', None)

    @property
    def sizeof_subblock(self):
        if hasattr(self, '_m_sizeof_subblock'):
            return self._m_sizeof_subblock

        self._m_sizeof_subblock = 4
        return getattr(self, '_m_sizeof_subblock', None)



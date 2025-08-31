# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprSizeofType0(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ExprSizeofType0, self)._write__seq(io)


    def _check(self):
        pass

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.a = self._io.read_u1()
            self.b = self._io.read_u4le()
            self.c = self._io.read_bytes(2)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprSizeofType0.Block, self)._write__seq(io)
            self._io.write_u1(self.a)
            self._io.write_u4le(self.b)
            self._io.write_bytes(self.c)


        def _check(self):
            pass
            if len(self.c) != 2:
                raise kaitaistruct.ConsistencyError(u"c", len(self.c), 2)


    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block

        self._m_sizeof_block = 7
        return getattr(self, '_m_sizeof_block', None)

    def _invalidate_sizeof_block(self):
        del self._m_sizeof_block


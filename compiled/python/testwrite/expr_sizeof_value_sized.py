# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprSizeofValueSized(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprSizeofValueSized, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_block1 = self._io.read_bytes(12)
        _io__raw_block1 = KaitaiStream(BytesIO(self._raw_block1))
        self.block1 = ExprSizeofValueSized.Block(_io__raw_block1, self, self._root)
        self.block1._read()
        self.more = self._io.read_u2le()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.block1._fetch_instances()


    def _write__seq(self, io=None):
        super(ExprSizeofValueSized, self)._write__seq(io)
        _io__raw_block1 = KaitaiStream(BytesIO(bytearray(12)))
        self._io.add_child_stream(_io__raw_block1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (12))
        def handler(parent, _io__raw_block1=_io__raw_block1):
            self._raw_block1 = _io__raw_block1.to_byte_array()
            if len(self._raw_block1) != 12:
                raise kaitaistruct.ConsistencyError(u"raw(block1)", 12, len(self._raw_block1))
            parent.write_bytes(self._raw_block1)
        _io__raw_block1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.block1._write__seq(_io__raw_block1)
        self._io.write_u2le(self.more)


    def _check(self):
        if self.block1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"block1", self._root, self.block1._root)
        if self.block1._parent != self:
            raise kaitaistruct.ConsistencyError(u"block1", self, self.block1._parent)
        self._dirty = False

    class Block(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ExprSizeofValueSized.Block, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.a = self._io.read_u1()
            self.b = self._io.read_u4le()
            self.c = self._io.read_bytes(2)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprSizeofValueSized.Block, self)._write__seq(io)
            self._io.write_u1(self.a)
            self._io.write_u4le(self.b)
            self._io.write_bytes(self.c)


        def _check(self):
            if len(self.c) != 2:
                raise kaitaistruct.ConsistencyError(u"c", 2, len(self.c))
            self._dirty = False


    @property
    def self_sizeof(self):
        if hasattr(self, '_m_self_sizeof'):
            return self._m_self_sizeof

        self._m_self_sizeof = 14
        return getattr(self, '_m_self_sizeof', None)

    def _invalidate_self_sizeof(self):
        del self._m_self_sizeof
    @property
    def sizeof_block(self):
        if hasattr(self, '_m_sizeof_block'):
            return self._m_sizeof_block

        self._m_sizeof_block = 12
        return getattr(self, '_m_sizeof_block', None)

    def _invalidate_sizeof_block(self):
        del self._m_sizeof_block
    @property
    def sizeof_block_a(self):
        if hasattr(self, '_m_sizeof_block_a'):
            return self._m_sizeof_block_a

        self._m_sizeof_block_a = 1
        return getattr(self, '_m_sizeof_block_a', None)

    def _invalidate_sizeof_block_a(self):
        del self._m_sizeof_block_a
    @property
    def sizeof_block_b(self):
        if hasattr(self, '_m_sizeof_block_b'):
            return self._m_sizeof_block_b

        self._m_sizeof_block_b = 4
        return getattr(self, '_m_sizeof_block_b', None)

    def _invalidate_sizeof_block_b(self):
        del self._m_sizeof_block_b
    @property
    def sizeof_block_c(self):
        if hasattr(self, '_m_sizeof_block_c'):
            return self._m_sizeof_block_c

        self._m_sizeof_block_c = 2
        return getattr(self, '_m_sizeof_block_c', None)

    def _invalidate_sizeof_block_c(self):
        del self._m_sizeof_block_c


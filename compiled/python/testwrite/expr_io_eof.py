# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprIoEof(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_substream1 = self._io.read_bytes(4)
        _io__raw_substream1 = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = ExprIoEof.OneOrTwo(_io__raw_substream1, self, self._root)
        self.substream1._read()
        self._raw_substream2 = self._io.read_bytes(8)
        _io__raw_substream2 = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = ExprIoEof.OneOrTwo(_io__raw_substream2, self, self._root)
        self.substream2._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.substream1._fetch_instances()
        self.substream2._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        _io__raw_substream1 = KaitaiStream(BytesIO(bytes(4)))
        self._io.add_child_stream(_io__raw_substream1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (4))
        def handler(parent, _io__raw_substream1=_io__raw_substream1):
            self._raw_substream1 = _io__raw_substream1.to_byte_array()
            if len(self._raw_substream1) != 4:
                raise kaitaistruct.ConsistencyError("raw(substream1)", 4, len(self._raw_substream1))
            parent.write_bytes(self._raw_substream1)
        _io__raw_substream1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.substream1._write__seq(_io__raw_substream1)
        _io__raw_substream2 = KaitaiStream(BytesIO(bytes(8)))
        self._io.add_child_stream(_io__raw_substream2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (8))
        def handler(parent, _io__raw_substream2=_io__raw_substream2):
            self._raw_substream2 = _io__raw_substream2.to_byte_array()
            if len(self._raw_substream2) != 8:
                raise kaitaistruct.ConsistencyError("raw(substream2)", 8, len(self._raw_substream2))
            parent.write_bytes(self._raw_substream2)
        _io__raw_substream2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.substream2._write__seq(_io__raw_substream2)


    def _check(self):
        if self.substream1._root != self._root:
            raise kaitaistruct.ConsistencyError("substream1", self._root, self.substream1._root)
        if self.substream1._parent != self:
            raise kaitaistruct.ConsistencyError("substream1", self, self.substream1._parent)
        if self.substream2._root != self._root:
            raise kaitaistruct.ConsistencyError("substream2", self._root, self.substream2._root)
        if self.substream2._parent != self:
            raise kaitaistruct.ConsistencyError("substream2", self, self.substream2._parent)
        self._dirty = False

    class OneOrTwo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.one = self._io.read_u4le()
            if (not (self._io.is_eof())):
                pass
                self.two = self._io.read_u4le()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if (not (self._io.is_eof())):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u4le(self.one)
            if (not (self._io.is_eof())):
                pass
                self._io.write_u4le(self.two)



        def _check(self):
            self._dirty = False

        @property
        def reflect_eof(self):
            if hasattr(self, '_m_reflect_eof'):
                return self._m_reflect_eof

            self._m_reflect_eof = self._io.is_eof()
            return getattr(self, '_m_reflect_eof', None)

        def _invalidate_reflect_eof(self):
            del self._m_reflect_eof



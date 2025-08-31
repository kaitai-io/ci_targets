# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceInRepeatExpr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_num_chunks = False
        self.num_chunks__to_write = True

    def _read(self):
        self.chunks = []
        for i in range(self.num_chunks):
            _t_chunks = InstanceInRepeatExpr.Chunk(self._io, self, self._root)
            try:
                _t_chunks._read()
            finally:
                self.chunks.append(_t_chunks)



    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()

        _ = self.num_chunks


    def _write__seq(self, io=None):
        super(InstanceInRepeatExpr, self)._write__seq(io)
        self._should_write_num_chunks = self.num_chunks__to_write
        if len(self.chunks) != self.num_chunks:
            raise kaitaistruct.ConsistencyError(u"chunks", len(self.chunks), self.num_chunks)
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._write__seq(self._io)



    def _check(self):
        pass
        for i in range(len(self.chunks)):
            pass
            if self.chunks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._root, self._root)
            if self.chunks[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._parent, self)


    class Chunk(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.offset = self._io.read_u4le()
            self.len = self._io.read_u4le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(InstanceInRepeatExpr.Chunk, self)._write__seq(io)
            self._io.write_u4le(self.offset)
            self._io.write_u4le(self.len)


        def _check(self):
            pass


    @property
    def num_chunks(self):
        if self._should_write_num_chunks:
            self._write_num_chunks()
        if hasattr(self, '_m_num_chunks'):
            return self._m_num_chunks

        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 16)
        self._m_num_chunks = self._io.read_u4le()
        self._io.seek(_pos)
        return getattr(self, '_m_num_chunks', None)

    @num_chunks.setter
    def num_chunks(self, v):
        self._m_num_chunks = v

    def _write_num_chunks(self):
        self._should_write_num_chunks = False
        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 16)
        self._io.write_u4le(self._m_num_chunks)
        self._io.seek(_pos)


    def _check_num_chunks(self):
        pass



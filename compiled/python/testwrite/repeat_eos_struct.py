# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatEosStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.chunks = []
        i = 0
        while not self._io.is_eof():
            _t_chunks = RepeatEosStruct.Chunk(self._io, self, self._root)
            try:
                _t_chunks._read()
            finally:
                self.chunks.append(_t_chunks)
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(RepeatEosStruct, self)._write__seq(io)
        for i in range(len(self.chunks)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"chunks", self._io.size() - self._io.pos(), 0)
            self.chunks[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"chunks", self._io.size() - self._io.pos(), 0)


    def _check(self):
        for i in range(len(self.chunks)):
            pass
            if self.chunks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._root, self._root)
            if self.chunks[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._parent, self)

        self._dirty = False

    class Chunk(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(RepeatEosStruct.Chunk, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.offset = self._io.read_u4le()
            self.len = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RepeatEosStruct.Chunk, self)._write__seq(io)
            self._io.write_u4le(self.offset)
            self._io.write_u4le(self.len)


        def _check(self):
            self._dirty = False



